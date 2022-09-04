import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/user/value_objects/uid.dart';

final uidProvider = StateProvider((_) => none<Uid>());
