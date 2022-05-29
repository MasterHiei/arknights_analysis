import 'package:fluent_ui/fluent_ui.dart';

import '../core/routing/route_params.dart';

class UserPage extends StatelessWidget {
  const UserPage(this.prarms, {Key? key}) : super(key: key);

  final UserParams prarms;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: Center(child: Text(prarms.token.getOrCrash())),
    );
  }
}
