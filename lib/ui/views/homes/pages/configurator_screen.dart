import 'package:domovedov/ui/style/styles.dart';
import 'package:domovedov/ui/widgets/app_back_button.dart';
import 'package:domovedov/ui/widgets/app_icon_button.dart';
import 'package:domovedov/ui/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class CanfiguratorScreenRoute extends MaterialPageRoute {
  CanfiguratorScreenRoute() : super(builder: (c) => CanfiguratorScreen());
}

class CanfiguratorScreen extends StatelessWidget {
  const CanfiguratorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      usePadding: false,
      color: Colors.white,
      child: Padding(
        padding: AppPaddings.a20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _appBar(),
            AppStyles.heightDivider(10),
            titleView(),
          ],
        ),
      ),
    );
  }

  Widget _appBar() => AppBackButton();

  Widget titleView() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title(),
          actions(),
        ],
      );
  Widget title() => Text(
        "Конфигуратор",
        style: AppTextStyles.LARGE_TEXT_STYLE,
      );
  Widget actions() => AppIconButton(
        iconData: Icons.phone,
      );
}
