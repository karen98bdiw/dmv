import 'package:domovedov/base/app_keys.dart';
import 'package:domovedov/base/routes.dart';
import 'package:domovedov/ui/style/size.dart';
import 'package:domovedov/ui/style/styles.dart';
import 'package:domovedov/ui/views/homes/pages/configurator_screen.dart';
import 'package:domovedov/ui/widgets/app_button.dart';
import 'package:domovedov/ui/widgets/app_icon_button.dart';
import 'package:domovedov/ui/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class HomeOverViewScreenRoute extends MaterialPageRoute {
  HomeOverViewScreenRoute()
      : super(
          builder: (c) => HomeOverViewScreen(),
        );
}

class HomeOverViewScreen extends StatefulWidget {
  const HomeOverViewScreen({Key? key}) : super(key: key);

  @override
  _HomeOverViewScreenState createState() => _HomeOverViewScreenState();
}

class _HomeOverViewScreenState extends State<HomeOverViewScreen> {
  @override
  Widget build(BuildContext context) {
    print("HOME OVERVIEW BUILD");
    return AppScaffold(
      usePadding: false,
      color: AppColors.GREY,
      child: Container(
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              beforeImage(),
              image(),
              afterImage(),
              buttomContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget image() => Container(
        height: AppSizes.dHeight(326),
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/h1.png",
          ),
          fit: BoxFit.cover,
        )),
      );

  Widget beforeImage() => Padding(
        padding: EdgeInsets.only(
          top: 27,
          left: 20,
          right: 20,
          bottom: 35,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleView(),
            AppStyles.heightDivider(25),
            description(),
            AppStyles.heightDivider(25),
            special(),
          ],
        ),
      );

  Widget titleView() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: title(),
          ),
          titleAcitons(),
        ],
      );

  Widget title() => Text(
        "Дом BLYSKÄR",
        style: AppTextStyles.LARGE_TEXT_STYLE,
      );

  Widget titleAcitons() => Row(
        children: [
          AppIconButton(
            iconData: Icons.phone,
          ),
          AppStyles.widthDivider(20),
          AppIconButton(
            iconData: Icons.close,
            filled: false,
          )
        ],
      );

  Widget description() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Фахверк |", style: AppTextStyles.LARGE_TEXT_STYLE),
                TextSpan(
                  text: "147 м2",
                  style: AppTextStyles.LARGE_TEXT_STYLE.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          AppStyles.heightDivider(12),
          Text(
            "Удеобный и уютный одноэтажный домс надежной двускатной крышей из битумной черепицы. Оригинальный экстерьер идеально отвечает современной планировке функционального строения. Оригинальный экстерьер идеально отвечает современной планировке функционального строения.",
            style: AppTextStyles.MIDDLE_TEXT_STYLE,
          ),
        ],
      );

  Widget special() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Особенности",
            style: AppTextStyles.LARGE_TEXT_STYLE,
          ),
          AppStyles.heightDivider(17),
          Text(
            "Технология фахверк",
            style: AppTextStyles.MIDDLE_TEXT_STYLE.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          AppStyles.heightDivider(17),
          Text(
            "Удобный и уютный одноэтажныйдом с надежной двускатной крышей надежной двускатной",
            style: AppTextStyles.SMALL_TEXT_STYLE.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      );

  Widget afterImage() => Padding(
        padding: EdgeInsets.only(
          top: 25,
          left: 20,
          right: 20,
          bottom: 40,
        ),
        child: Column(
          children: [
            price(),
          ],
        ),
      );

  Widget price() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Стоимость",
                style: AppTextStyles.LARGE_TEXT_STYLE,
              ),
              Text(
                "3,5 - 6 млн. ₽",
                style: AppTextStyles.LARGE_TEXT_STYLE,
              ),
            ],
          ),
          AppStyles.heightDivider(4),
          Text(
            "Точная стоимость в конфигураторе",
            style: AppTextStyles.SMALLEST_TEXT_STYLE,
          ),
        ],
      );

  Widget buttomContent() => Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            button(),
            AppStyles.heightDivider(17),
            additional(),
            AppStyles.heightDivider(20),
          ],
        ),
      );

  Widget button() => AppButton(
        title: "Конфигуратор",
        onPressed: () {
          print("hello w ${AppKeys.navigatorKey.currentContext}");
          Navigator.of(context).push(
            MaterialPageRoute(builder: (c) => CanfiguratorScreen()),
          );
        },
      );

  Widget additional() => Text(
        "Комплектующие и производители",
        style: AppTextStyles.SMALL_TEXT_STYLE.copyWith(
          backgroundColor: Colors.transparent,
        ),
      );
}
