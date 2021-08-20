import 'package:domovedov/ui/style/size.dart';
import 'package:domovedov/ui/style/styles.dart';
import 'package:domovedov/ui/widgets/app_back_button.dart';
import 'package:domovedov/ui/widgets/app_button.dart';
import 'package:domovedov/ui/widgets/app_icon_button.dart';
import 'package:domovedov/ui/widgets/app_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DealExplainScreenRout extends MaterialPageRoute {
  DealExplainScreenRout() : super(builder: (c) => DealExplainScreen());
}

class DealExplainScreen extends StatelessWidget {
  const DealExplainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      usePadding: false,
      color: Colors.white,
      child: Padding(
        padding: AppPaddings.a20,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _appBar(),
              AppStyles.heightDivider(AppSizes.dHeight(45)),
              titleView(),
              AppStyles.heightDivider(
                AppSizes.dHeight(10),
              ),
              subTitle(),
              AppStyles.heightDivider(
                AppSizes.dHeight(40),
              ),
              content(),
              AppStyles.heightDivider(
                AppSizes.dHeight(44),
              ),
              more(),
              input(),
              button(),
            ],
          ),
        ),
      ),
    );
  }

  Widget input() => Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppSizes.dHeight(40),
        ),
        child: TextField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromRGBO(199, 205, 203, 1),
                )),
            hintText: "Введите ваш номер телефона",
          ),
        ),
      );

  Widget more() => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Что еще нужно знать",
                style: AppTextStyles.SCREEN_SUBTITLE_STYLE,
              ),
              Icon(Icons.arrow_right_outlined),
            ],
          ),
          AppStyles.heightDivider(
            AppSizes.dHeight(20),
          ),
          Text(
            "Чтобы не допустить трагических ошибокs",
            style: AppTextStyles.MIDDLE_TEXT_STYLE,
          ),
          AppStyles.heightDivider(
            AppSizes.dHeight(8),
          ),
          Text(
            "Проверяем земельный участоки выезжаем на стройку, чтобы убедиться в качестве строительства",
            style: AppTextStyles.MIDDLE_TEXT_STYLE,
          ),
        ],
      );

  Widget content() => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "1й в работе",
            style: AppTextStyles.SMALL_TEXT_STYLE.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          AppStyles.heightDivider(
            AppSizes.dHeight(10),
          ),
          Container(
            height: AppSizes.dHeight(383),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (c, i) => DealItem(
                    index: i,
                    title: "Домокомплект",
                    price: "3 450 000 ₽",
                    description:
                        "Вы оплачиваете домокомлпект. Это лего-конструктор, который произведут на заводе, а потом доставят и соберут на вашем участке.",
                    duration: "10 — 20 минут на оплату и подписание договора")),
          ),
          AppStyles.heightDivider(
            AppSizes.dHeight(10),
          ),
          Text(
            "Все что выше, полностью онлайн",
            style: AppTextStyles.SMALL_TEXT_STYLE.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      );

  Widget _appBar() => AppBackButton();

  Widget titleView() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title(),
          actions(),
        ],
      );
  Widget title() => Text(
        "Дом BLYSKÄR",
        style: AppTextStyles.SCREEN_TITLE_STYLE,
      );

  Widget actions() => AppIconButton(
        iconData: Icons.phone,
      );
  Widget subTitle() => Text(
        "Ваша сделка будет\nпроходить так:",
        style: AppTextStyles.MIDDLE_TEXT_STYLE,
      );

  Widget button() => Column(
        children: [
          AppButton(title: "Оставить заявку", onPressed: () {}),
          AppStyles.heightDivider(
            AppSizes.dHeight(7),
          ),
          Text("Комплектующие и производители"),
          AppStyles.heightDivider(
            AppSizes.dHeight(7),
          ),
          Text(
            "А также прочитать и принять договоры",
            style: AppTextStyles.SMALLEST_TEXT_STYLE,
          ),
          Text(
            "DMV и ООО Проект-строй",
            style: AppTextStyles.SMALLEST_TEXT_STYLE,
          ),
        ],
      );
}

class DealItem extends StatelessWidget {
  final String title;
  final String price;
  final String description;
  final String duration;
  final int index;
  DealItem({
    Key? key,
    required this.index,
    required this.price,
    required this.description,
    required this.title,
    required this.duration,
  }) : super(key: key);

  final colors = [
    Color.fromRGBO(133, 201, 213, 1),
    Color.fromRGBO(111, 237, 204, 1),
    Color.fromRGBO(133, 201, 213, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        AppSizes.dHeight(30),
      ),
      margin: EdgeInsets.only(
        left: index == 0 ? AppSizes.dHeight(10) : 0,
        right: AppSizes.dHeight(10),
      ),
      height: AppSizes.dHeight(383),
      width: AppSizes.dWidth(299),
      decoration: BoxDecoration(
        color: colors[index],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.SCREEN_TITLE_STYLE,
              ),
              AppStyles.heightDivider(
                AppSizes.dHeight(6),
              ),
              Text(
                price,
                style: AppTextStyles.SCREEN_SUBTITLE_STYLE,
              ),
              AppStyles.heightDivider(
                AppSizes.dHeight(13),
              ),
              Text(
                description,
                style: AppTextStyles.SMALL_TEXT_STYLE,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  duration,
                  style: AppTextStyles.MIDDLE_TEXT_STYLE,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: AppSizes.dHeight(25),
                height: AppSizes.dHeight(25),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                ),
                child: Center(
                  child: Text("${index + 1}"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
