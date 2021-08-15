import 'dart:ui';

import 'package:domovedov/ui/style/size.dart';
import 'package:domovedov/ui/style/styles.dart';
import 'package:domovedov/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AppBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Bottom navigationBuild");
    return Container(
      height: AppSizes.bottomNavigationBarHeight,
      padding: AppStyles.bottomNavigationBarPadding,
      color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigationBarItem(
            itemIndex: 0,
            title: "Дома",
            child: Icon(Icons.home),
          ),
          NavigationBarItem(
            itemIndex: 1,
            title: "Участки",
            child: Icon(Icons.home),
          ),
          NavigationBarItem(
            itemIndex: 2,
            title: "Item 3",
            child: Icon(Icons.home),
          ),
          NavigationBarItem(
            itemIndex: 3,
            title: "Item 4",
            child: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}

class NavigationBarItem extends ViewModelWidget<HomeViewModel> {
  final int itemIndex;
  final String title;
  final Widget child;
  const NavigationBarItem({
    Key? key,
    required this.itemIndex,
    required this.title,
    required this.child,
  }) : super(key: key);

  TextStyle titleTextStyleChecker(bool itemIsCurent) => TextStyle(
        color: itemIsCurent ? Colors.white : Colors.black,
      );

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    print("Bottom navigation item Build");
    final TextStyle titleTextStyle =
        titleTextStyleChecker(model.curentScreenIndex == itemIndex);
    return GestureDetector(
      onTap: () => model.onScreenIndexChanges(itemIndex),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            child,
            Text(
              title,
              style: titleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
