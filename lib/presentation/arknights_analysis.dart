import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_windows/webview_windows.dart';

import '../core/constants/constants.dart';
import '../core/utils/logger.dart';

class ArknightsAnalysis extends StatelessWidget {
  const ArknightsAnalysis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) => MaterialApp(
        title: appName,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(1920, 1080),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = WebviewController();

  var _startFetching = false;

  @override
  void initState() {
    super.initState();
    try {
      _initWebView();
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_controller.value.isInitialized)
              Expanded(child: Webview(_controller)),
            if (!_controller.value.isInitialized)
              const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }

  Future<void> _initWebView() async {
    await _controller.initialize();
    await Future.wait([
      _controller.setBackgroundColor(Colors.transparent),
      _controller.setPopupWindowPolicy(WebviewPopupWindowPolicy.deny),
      _controller.loadUrl(akUserPage),
    ]);
    _controller.loadingState.listen((state) async {
      if (state == LoadingState.navigationCompleted) {
        await _controller.loadUrl(asGetToken);

        if (_startFetching) return;
        const data = 'document.getElementsByTagName("pre")[0].innerHTML';
        const script = 'window.chrome.webview.postMessage(JSON.parse($data))';
        await _controller.executeScript(script);
      }
    });
    _controller.webMessage.listen((data) {
      final token = data['data']?['token'] as String? ?? '';
      logger.d(token);
      _startFetching = true;
    });

    if (!mounted) return;
    setState(() {});
  }
}
