import 'package:domovedov/base/app_keys.dart';
import 'package:domovedov/ui/views/homes/pages/configurator_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static BuildContext? context = AppKeys.navigatorKey.currentContext!;
  static toCanfigurator() {
    Navigator.of(AppKeys.navigatorKey.currentContext!).push(
      CanfiguratorScreenRoute(),
    );
  }

  static back() {
    Navigator.of(AppRoutes.context!).canPop()
        ? Navigator.of(AppRoutes.context!).pop()
        : null;
  }
}
