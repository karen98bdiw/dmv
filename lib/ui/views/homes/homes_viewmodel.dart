import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class HomesViewModel extends BaseViewModel {
  NavigatorState? navigatorState;

  final List<String> stories = [
    "Story 1",
    "Story 2",
    "Story 3",
    "Story 4",
    "Story 5",
  ];

  final List<String> categiries = [
    "Cat1",
    "Categ2",
    "Categor3",
    "CategoriItem4",
    "Categori item 5",
  ];

  final List<String> homes = [
    "Home 1",
    "Home 2",
    "Home 3",
    "Home 4",
    "Home 5",
    "Home 6",
  ];

  int curentCategoryIndex = 0;

  onCategoryItemTap(int itemIndex) {
    curentCategoryIndex = itemIndex;
    notifyListeners();
  }

  HomesViewModel(BuildContext context) {
    navigatorState = Navigator.of(context);
  }
}
