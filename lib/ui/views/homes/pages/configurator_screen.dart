import 'package:domovedov/base/app_keys.dart';
import 'package:domovedov/ui/style/size.dart';
import 'package:domovedov/ui/style/styles.dart';
import 'package:domovedov/ui/views/homes/pages/deal_explain_screen.dart';
import 'package:domovedov/ui/widgets/app_back_button.dart';
import 'package:domovedov/ui/widgets/app_button.dart';
import 'package:domovedov/ui/widgets/app_icon_button.dart';
import 'package:domovedov/ui/widgets/app_scaffold.dart';
import 'package:flutter/cupertino.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              _appBar(),
              AppStyles.heightDivider(AppSizes.dHeight(45)),
              titleView(),
              AppStyles.heightDivider(
                AppSizes.dHeight(10),
              ),
              subTitle(),
              content(),
              AppStyles.heightDivider(
                AppSizes.dHeight(44),
              ),
              price(),
              AppStyles.heightDivider(
                AppSizes.dHeight(25),
              ),
              hipoteck(),
              AppStyles.heightDivider(
                AppSizes.dHeight(50),
              ),
              button(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget content() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ConfiguratorItem(
              title: "Фундамент",
              subtitle: "Буронабивные сваи",
              description:
                  "Способ забивки свай,который состоит из бурения скважиныСпособ забивки свай, который состоит из бурения "),
          ConfiguratorItem(
              title: "Фундамент",
              subtitle: "Буронабивные сваи",
              description:
                  "Способ забивки свай,который состоит из бурения скважиныСпособ забивки свай, который состоит из бурения "),
          ConfiguratorItem(
              title: "Фундамент",
              subtitle: "Буронабивные сваи",
              description:
                  "Способ забивки свай,который состоит из бурения скважиныСпособ забивки свай, который состоит из бурения "),
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
        "Конфигуратор",
        style: AppTextStyles.SCREEN_TITLE_STYLE,
      );

  Widget actions() => AppIconButton(
        iconData: Icons.phone,
      );
  Widget subTitle() => Text(
        "Сформировали конфигурацию,\nно можно её изменить",
        style: AppTextStyles.MIDDLE_TEXT_STYLE,
      );

  Widget price() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Точная стоимость",
                style: AppTextStyles.LARGE_TEXT_STYLE,
              ),
              AppStyles.heightDivider(
                AppSizes.dHeight(10),
              ),
              Text(
                "4 860 000 ₽",
                style: AppTextStyles.LARGE_TEXT_STYLE,
              ),
            ],
          ),
          Text(
              "Если что-то потребуется изменить, то еще будет такая возможность",
              style: AppTextStyles.SMALLER_TEXT_STYLE),
          AppStyles.heightDivider(
            AppSizes.dHeight(23),
          ),
          Divider(
            height: 1,
            color: AppColors.GREY.withAlpha(150),
          ),
        ],
      );

  Widget hipoteck() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Нужна ипотека",
                  style: AppTextStyles.SMALL_TEXT_STYLE,
                ),
                AppStyles.heightDivider(
                  AppSizes.dHeight(10),
                ),
                Text(
                  "Мы сами все заполними \nи отправим заявку во все банки",
                  style: AppTextStyles.SMALLER_TEXT_STYLE,
                ),
              ],
            ),
          ),
          CupertinoSwitch(
            value: true,
            onChanged: (v) {},
          ),
        ],
      );
  Widget button() => Column(
        children: [
          AppButton(
              title: "Продолжить",
              onPressed: () {
                Navigator.of(AppKeys.navigatorKey.currentContext!).push(
                  DealExplainScreenRout(),
                );
              }),
          AppStyles.heightDivider(
            AppSizes.dHeight(7),
          ),
          Text("Комплектующие и производители"),
        ],
      );
}

class ConfiguratorItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  const ConfiguratorItem({
    Key? key,
    required this.description,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: AppSizes.dHeight(44),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: AppTextStyles.MIDDLE_TEXT_STYLE,
          ),
          AppStyles.heightDivider(
            AppSizes.heightByTemplate(size: 14),
          ),
          Container(
            padding: EdgeInsets.all(
              AppSizes.dHeight(20),
            ),
            decoration: BoxDecoration(
              color: AppColors.lightOrange,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subtitle,
                      style: AppTextStyles.SMALL_TEXT_STYLE,
                    ),
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                AppStyles.heightDivider(5),
                Text(
                  description,
                  style: AppTextStyles.SMALLER_TEXT_STYLE,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
