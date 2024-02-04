import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

import '../../../../core/routing/routes.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../presentation/core/common/widgets/app_dialog.dart';
import '../providers/splash_provider.dart';
import '../widgets/index.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> with WindowListener {
  @override
  void initState() {
    super.initState();
    windowManager.addListener(this);
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
    _listenState();

    return Mica(
      backgroundColor: Colors.grey,
      child: Center(
        child: AnimatedOpacity(
          opacity: ref.watch(splashProvider.select((state) => state.opacity)),
          duration: const Duration(milliseconds: 1300),
          onEnd: ref.read(splashProvider.notifier).prefetch,
          child: const SplashLogo(),
        ),
      ),
    );
  }

  void _listenState() => ref.listen(
        splashProvider,
        (_, next) {
          if (next.shouldTransition) {
            return const AkLoginRoute().go(context);
          }

          next.failureOption.match(
            () {},
            (failure) => AppDialog.retry(
              context,
              title: const Text(
                LocaleKeys.features_gameData_retryAlert_title,
              ).tr(),
              content: const Text(
                LocaleKeys.features_gameData_retryAlert_content,
              ).tr(),
              onRetry: ref.read(splashProvider.notifier).prefetch,
              onCancel: windowManager.destroy,
            ),
          );
        },
      );
}
