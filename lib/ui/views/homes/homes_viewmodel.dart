import 'package:domovedov/ui/views/homes/widgets/stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class HomesViewModel extends BaseViewModel {
  NavigatorState? navigatorState;

  final List<StoryItem> stories = [
    StoryItem(title: "Экспертиза строительных работ", asset: "assets/s1.png"),
    StoryItem(title: "ДомBLYSKAR", asset: "assets/s1.png"),
    StoryItem(title: "Нас не просили, но мы сделали", asset: "assets/s1.png"),
    StoryItem(title: "title4", asset: "assets/s1.png"),
  ];

  final List<String> categiries = [
    "Вахверк",
    "Клееный брус",
    "80-120 м2",
    "CategoriItem4",
    "Categori item 5",
  ];

  final List<String> homes = [
    "Клееный брус",
    "Клееный брус",
    "Клееный брус",
    "Клееный брус",
    "Клееный брус",
    "Клееный брус",
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
