import 'package:domovedov/base/routes.dart';
import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tijdsofijeoifjef");
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
      },
      child: Container(
        padding: EdgeInsets.only(
          right: 10,
          top: 10,
          bottom: 10,
        ),
        color: Colors.transparent,
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
