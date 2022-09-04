import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/ak_login_type.dart';

final akLoginTypeProvider = StateProvider((_) => AkLoginType.official);
