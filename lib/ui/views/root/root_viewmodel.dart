import 'package:domovedov/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RootViewModel extends BaseViewModel {
  NavigatorState? navigatorState;

  RootViewModel(BuildContext context) {
    navigatorState = Navigator.of(context);
  }

  Future<void> onReady() async {
    await Future.delayed(Duration(milliseconds: 100));
    navigatorState!.push(HomeViewRoute());
  }
}
