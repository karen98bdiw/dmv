import 'package:domovedov/ui/style/size.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final bool usePadding;

  const AppScaffold({
    Key? key,
    required this.child,
    this.usePadding = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
