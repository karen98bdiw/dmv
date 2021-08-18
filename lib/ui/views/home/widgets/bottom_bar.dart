import 'dart:ui';

import 'package:domovedov/ui/style/size.dart';
import 'package:domovedov/ui/style/styles.dart';
import 'package:domovedov/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

class AppBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Bottom navigationBuild");
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(249, 249, 249, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -4),
            color: Color.fromRGBO(0, 0, 0, 0.03),
            blurRadius: 20,
          ),
        ],
      ),
      padding: AppStyles.bottomNavigationBarPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarItem(
            itemIndex: 0,
            title: "Дома",
            asset: "assets/b1.svg",
          ),
          NavigationBarItem(
            itemIndex: 1,
            title: "Участки",
            asset: "assets/b2.svg",
          ),
          NavigationBarItem(
            itemIndex: 2,
            title: "Item 3",
            asset: "assets/b3.svg",
          ),
          NavigationBarItem(
            itemIndex: 3,
            title: "Item 4",
            asset: "assets/b4.svg",
          ),
        ],
      ),
    );
  }
}

class NavigationBarItem extends ViewModelWidget<HomeViewModel> {
  final int itemIndex;
  final String title;
  final String asset;
  const NavigationBarItem({
    Key? key,
    required this.itemIndex,
    required this.title,
    required this.asset,
  }) : super(key: key);

  TextStyle titleTextStyleChecker(bool itemIsCurent) => TextStyle(
        color: itemIsCurent
            ? AppColors.checkedBottomNavItemColor
            : AppColors.uncheckedBottonNavItemColor,
        fontSize: 10,
        fontWeight: FontWeight.w600,
      );

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    print("Bottom navigation item Build");
    final TextStyle titleTextStyle =
        titleTextStyleChecker(model.curentScreenIndex == itemIndex);
    return GestureDetector(
      onTap: () => model.onScreenIndexChanges(itemIndex),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            asset,
            color: model.curentScreenIndex == itemIndex
                ? AppColors.checkedBottomNavItemColor
                : AppColors.uncheckedBottonNavItemColor,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: titleTextStyle,
          ),
        ],
      ),
    );
  }
}
