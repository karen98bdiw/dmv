import 'package:domovedov/ui/style/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AppStyles {
  static final scaffoldBasePadding = EdgeInsets.all(AppSizes.h20);
  static final bottomNavigationBarPadding =
      EdgeInsets.symmetric(horizontal: 31, vertical: 17);
  static final storiesListFirstItemLeftMargin = EdgeInsets.only(
    left: AppSizes.storiesListFirstItemLeftMargin,
  );

  static SizedBox heightDivider(double size) => SizedBox(
        height: size,
      );
  static SizedBox widthDivider(double size) => SizedBox(
        width: size,
      );
}

class AppPaddings {
  static final a20 = EdgeInsets.all(20);
  static const a10 = EdgeInsets.all(10);
  static final screenTitlePadding = EdgeInsets.only(
    top: 35,
    bottom: 30,
    left: AppSizes.scaffoldHorizontalPadding,
  );
  static final homes_category_title_padding = EdgeInsets.only(
    top: 26,
    bottom: 18,
    left: AppSizes.scaffoldHorizontalPadding,
  );
}

class AppColors {
  static const checkedBottomNavItemColor = Color.fromRGBO(10, 132, 255, 1);
  static const uncheckedBottonNavItemColor = Color.fromRGBO(182, 182, 182, 1);
  static const checkedCategoryColor = Color.fromRGBO(10, 132, 255, 1);
  static const uncheckedCategoryColor = Colors.white;
  static const UNCHECKED_CATEGORY_BORDER_COLOR =
      Color.fromRGBO(215, 215, 215, 1);
  static const WHITE = Colors.white;
  static const BLACK = Colors.black;
  static const GREY = Color.fromRGBO(118, 118, 118, 1);
}

class AppFontSizes {
  static const double LARGEST_TEXT = 27;
  static const double LARGE_TEXT = 20;
  static const double MIDDLE_TEXT = 16;
  static const double SMALL_TEXT = 14;
  static const double SMALLER_TEXT = 12;
  static const double SMALLEST_TEXT = 10;
}

class AppTextStyles {
  static const SCREEN_TITLE_STYLE = TextStyle(
    fontSize: AppFontSizes.LARGEST_TEXT,
    fontWeight: FontWeight.w800,
  );

  static const SCREEN_SUBTITLE_STYLE = TextStyle(
    fontSize: AppFontSizes.LARGE_TEXT,
    fontWeight: FontWeight.w800,
  );

  static const SMALL_TEXT_STYLE = TextStyle(
    fontSize: AppFontSizes.SMALL_TEXT,
    fontWeight: FontWeight.w800,
    color: Colors.black,
  );

  static const LARGE_TEXT_STYLE = TextStyle(
    fontSize: AppFontSizes.LARGE_TEXT,
    fontWeight: FontWeight.w800,
    color: Colors.black,
  );
  static const MIDDLE_TEXT_STYLE = TextStyle(
    fontSize: AppFontSizes.MIDDLE_TEXT,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const SMALLER_TEXT_STYLE = TextStyle(
    fontSize: AppFontSizes.SMALLER_TEXT,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const SMALLEST_TEXT_STYLE = TextStyle(
    fontSize: AppFontSizes.SMALLER_TEXT,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const CHECKED_CATEGORY_TEXT_STYLE = TextStyle(
    fontSize: AppFontSizes.SMALL_TEXT,
    fontWeight: FontWeight.w600,
    color: AppColors.WHITE,
  );
  static const UNCHECKED_CATEGORY_TEXT_STYLE = TextStyle(
    fontSize: AppFontSizes.SMALL_TEXT,
    fontWeight: FontWeight.w600,
    color: AppColors.BLACK,
  );

  static const BUTTON_TITLE_STYLE = TextStyle(
    fontSize: AppFontSizes.MIDDLE_TEXT,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );
}
