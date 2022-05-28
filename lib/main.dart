import 'package:flutter/material.dart';

import 'initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(await initializeApp());
}
