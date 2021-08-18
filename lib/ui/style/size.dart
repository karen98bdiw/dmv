import 'dart:ui';

class AppSizes {
  static final templateWidth = 414;
  static final templateHeight = 812;

  static final initialWidth = window.physicalSize.width;
  static final initialHeight = window.physicalSize.height;

  static double safeAreaTop = window.padding.top / window.devicePixelRatio;
  static double safeAreaBottom =
      window.padding.bottom / window.devicePixelRatio;
  static double scaffoldPaddingTop = 10;

  static double heightByTemplate({
    required double size,
  }) {
    return size;
  }

  static double widthByTemplate({
    required double size,
  }) {
    return size;
  }

  static double h20 = heightByTemplate(size: 20);
  static double w20 = heightByTemplate(size: 20);
  static double h80 = heightByTemplate(size: 80);
  static double h5 = heightByTemplate(size: 5);

  static double bottomNavigationBarHeight = heightByTemplate(size: 80);
  static double bottomNavigationBarPaddingSize = heightByTemplate(size: 5);
  static double bottomNavigationBarItemPadding = 2;
  static double storiesListFirstItemLeftMargin = 20;
  static double storyItemWidth = 100;
  static double storyListHeight = 150;
  static double scaffoldHorizontalPadding = 20;
}
