import 'package:domovedov/ui/style/size.dart';
import 'package:domovedov/ui/style/styles.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final bool usePadding;
  final Color color;

  const AppScaffold({
    Key? key,
    required this.child,
    this.usePadding = true,
    this.color = AppColors.WHITE,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: usePadding
            ? EdgeInsets.only(
                top: AppSizes.safeAreaTop,
                bottom: AppSizes.safeAreaBottom,
              )
            : EdgeInsets.zero,
        child: child,
      ),
    );
  }
}
