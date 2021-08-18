import 'package:domovedov/ui/style/styles.dart';
import 'package:domovedov/ui/widgets/app_button.dart';
import 'package:domovedov/ui/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class HomeOverViewScreenRoute extends MaterialPageRoute {
  HomeOverViewScreenRoute()
      : super(
          builder: (c) => HomeOverViewScreen(),
        );
}

class HomeOverViewScreen extends StatelessWidget {
  const HomeOverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      usePadding: false,
      color: Colors.grey[50]!,
      child: Container(
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    beforeImage(),
                    image(),
                    afterImage(),
                  ],
                ),
              ),
            ),
            buttomContent(),
          ],
        ),
      ),
    );
  }

  Widget image() => Image.asset(
        "assets/h1.png",
        width: double.infinity,
        height: 200,
        fit: BoxFit.fitWidth,
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
            description(),
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
        style: AppTextStyles.SCREEN_TITLE_STYLE,
      );
  Widget titleAcitons() => Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.phone,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
            ),
          ),
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
          Text(
            "Технология фахверк",
            style: AppTextStyles.MIDDLE_TEXT_STYLE.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
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
          Text(
            "Точная стоимость в конфигураторе",
            style: AppTextStyles.SMALLEST_TEXT_STYLE,
          ),
        ],
      );

  Widget buttomContent() => Column(
        children: [
          button(),
          additional(),
          AppStyles.heightDivider(20),
        ],
      );

  Widget button() => AppButton(title: "Конфигуратор");
  Widget additional() => Text(
        "Комплектующие и производители",
        style: AppTextStyles.SMALL_TEXT_STYLE,
      );
}
