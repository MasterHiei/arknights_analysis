import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/user/user.dart';

final userProvider = StateProvider((_) => none<User>());
