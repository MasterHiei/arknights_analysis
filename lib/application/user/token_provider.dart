import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/user/value_objects/token.dart';

final tokenProvider = StateProvider((_) => none<Token>());
