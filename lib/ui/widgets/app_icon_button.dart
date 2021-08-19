import 'package:domovedov/ui/style/styles.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  ///icon button will display icon with given asset if it is not null
  ///otherwise it will use icon data;

  final bool rounded;
  final IconData? iconData;
  final String? asset;
  final bool filled;

  const AppIconButton({
    this.rounded = true,
    this.iconData,
    this.asset,
    this.filled = true,
  }) : assert(asset != null || iconData != null);

  BoxShape get shape => rounded ? BoxShape.circle : BoxShape.rectangle;
  Color get backgroundColor => filled ? AppColors.GREY : Colors.transparent;
  Border? get border =>
      filled ? null : Border.all(color: AppColors.GREY, width: 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.a10,
      decoration: BoxDecoration(
        shape: shape,
        color: backgroundColor,
        border: border,
      ),
      child: Center(
        child: Icon(
          iconData,
          color: filled ? Colors.white : AppColors.GREY,
        ),
      ),
    );
  }
}
