import 'package:domovedov/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

run() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(App());
}

main() async => run();
