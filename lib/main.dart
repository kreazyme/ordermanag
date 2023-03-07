import 'package:flutter/material.dart';
import 'package:nguyenminhdung/injector.dart';
import 'package:nguyenminhdung/src/app.dart';

Future<void> main() async {
  await initDependences();
  runApp(const App());
}
