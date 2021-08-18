import 'package:domovedov/ui/style/styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  const AppButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      padding: EdgeInsets.symmetric(vertical: 17),
      alignment: Alignment.center,
      child: Text(
        title,
        style: AppTextStyles.BUTTON_TITLE_STYLE,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        color: Colors.blue,
      ),
    );
  }
}
