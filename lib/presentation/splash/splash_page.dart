import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time/time.dart';
import 'package:window_manager/window_manager.dart';

import '../../application/game_data/game_data_provider.dart';
import '../../application/splash/splash_provider.dart';
import '../../core/exceptions/app_failure.dart';
import '../core/common/widgets/app_dialog.dart';
import '../core/common/widgets/app_flush_bar.dart';
import '../core/resources/images.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> with WindowListener {
  @override
  void initState() {
    windowManager.addListener(this);
    super.initState();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  Future<void> onWindowClose() => AppDialog.closeWindow(
        context,
        windowManager: windowManager,
      );

  @override
  Widget build(BuildContext context) {
    _listenState(context, ref);

    final useSimple = Random().nextBool();
    return Mica(
      backgroundColor: Colors.grey,
      child: Center(
        child: AnimatedOpacity(
          opacity: ref.watch(splashProvider).opacity,
          duration: const Duration(milliseconds: 1300),
          onEnd: () => ref.read(splashProvider.notifier).animated(context),
          child: _buildLogo(useSimple: useSimple),
        ),
      ),
    );
  }

  Widget _buildLogo({required bool useSimple}) {
    final logo = useSimple ? Images.logoSimple : Images.logo;
    final logoIntro = useSimple ? '简单线条' : '极致色彩';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Image.asset(
            logo.path,
            width: ScreenUtil().screenHeight * 0.3,
            height: ScreenUtil().screenHeight * 0.3,
            fit: BoxFit.contain,
          ),
        ),
        Text(
          logoIntro,
          style: TextStyle(color: Colors.white, fontSize: 26.sp),
        ),
      ],
    );
  }

  void _listenState(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<Unit>>(
      gachaPoolProvider,
      (_, next) => next.maybeWhen<void>(
        data: (_) => ref.read(splashProvider.notifier).fetched(context),
        error: (error, _) {
          final failure = error as AppFailure;
          AppFlushBar.show(
            context,
            message: failure.localizedMessage,
            severity: FlushBarSeverity.error,
          );
          failure.maybeWhen(
            unexpectedError: (_) async {
              await 3.seconds.delay;
              ref.read(gachaPoolProvider.notifier).retry();
            },
            orElse: () {},
          );
        },
        orElse: () {},
      ),
    );
  }
}
