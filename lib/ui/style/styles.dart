import 'package:domovedov/ui/style/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

class AppStyles {
  static final scaffoldBasePadding = EdgeInsets.all(AppSizes.h20);
  static final bottomNavigationBarPadding =
      EdgeInsets.all(AppSizes.bottomNavigationBarPaddingSize);
  static final storiesListFirstItemLeftMargin = EdgeInsets.only(
    left: AppSizes.storiesListFirstItemLeftMargin,
  );

  static SizedBox heightDivider(double size) => SizedBox(
        height: size,
      );
}

class AppPaddings {
  static final a20 = EdgeInsets.all(20);
}
