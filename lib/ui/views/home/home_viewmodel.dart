import 'package:domovedov/ui/views/homes/homes_screen.dart';
import 'package:domovedov/ui/views/homes/homes_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  NavigatorState? navigatorState;
  final List<Widget> homeScreens = [
    HomesView(),
    Container(color: Colors.pink),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];

  int curentScreenIndex = 0;
  Widget? curentScreen;

  onScreenIndexChanges(int index) {
    curentScreen = homeScreens[index];
    curentScreenIndex = index;
    notifyListeners();
  }

  HomeViewModel(BuildContext context) {
    navigatorState = Navigator.of(context);
    curentScreen = homeScreens[0];
  }

  Future<void> onReade() async {}
}
