import 'package:domovedov/base/app_keys.dart';
import 'package:domovedov/ui/views/root/root_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RootView(),
      navigatorKey: AppKeys.navigatorKey,
    );
  }
}
