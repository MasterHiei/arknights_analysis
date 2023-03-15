import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time/time.dart';
import 'package:window_manager/window_manager.dart';

import '../../application/game_data_raw/gacha_pool_provider.dart';
import '../../application/game_data_raw/states/gacha_pool_state.dart';
import '../../application/splash/splash_provider.dart';
import '../core/common/widgets/app_dialog.dart';
import '../core/common/widgets/app_flush_bar.dart';
import 'widgets/index.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
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
    _listenState(context, ref);

    return Mica(
      backgroundColor: Colors.grey,
      child: Center(
        child: AnimatedOpacity(
          opacity: ref.watch(splashProvider).opacity,
          duration: const Duration(milliseconds: 1300),
          onEnd: () => ref.read(splashProvider.notifier).animated(context),
          child: const SplashLogo(),
        ),
      ),
    );
  }

  void _listenState(BuildContext context, WidgetRef ref) =>
      ref.listen<GachaPoolState>(
        gachaPoolProvider,
        (_, next) => next.maybeWhen<void>(
          success: () => ref.read(splashProvider.notifier).fetched(context),
          failure: (failure) {
            AppFlushBar.show(
              context,
              message: failure.localizedMessage,
              severity: FlushBarSeverity.error,
            );
            failure.maybeWhen(
              unexpectedError: (_) async {
                await 3.seconds.delay;
                ref.invalidate(gachaPoolProvider);
              },
              orElse: () {},
            );
          },
          orElse: () {},
        ),
      );
}
