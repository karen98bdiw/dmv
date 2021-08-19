import 'package:domovedov/ui/style/styles.dart';
import 'package:domovedov/ui/views/homes/homes_viewmodel.dart';
import 'package:domovedov/ui/views/homes/pages/home_overview_screen.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class Homes extends ViewModelWidget<HomesViewModel> {
  const Homes({Key? key}) : super(key: key);

  Widget separatorBuilder(c, i) => SizedBox(
        height: 30,
      );

  @override
  Widget build(
    BuildContext context,
    model,
  ) {
    print("HOMES BUILD");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(model),
        homes(model, context),
      ],
    );
  }

  Widget homes(HomesViewModel model, context) {
    List<HomeItem> _homes = model.homes
        .map((e) => HomeItem(
              title: model.categiries[model.curentCategoryIndex],
              subtitle: "140 м2 | 3,5-6 млн ₽",
            ))
        .toList();

    return Column(
      children: _homes,
    );
  }

  Widget title(HomesViewModel model) => Padding(
        padding: AppPaddings.homes_category_title_padding,
        child: Text(
          model.categiries[model.curentCategoryIndex],
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}

class HomeItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  const HomeItem({
    Key? key,
    required this.title,
    this.image = "assets/h1.png",
    required this.subtitle,
  }) : super(key: key);

  TextStyle titleStyle() => AppTextStyles.SMALL_TEXT_STYLE;
  TextStyle subStyle() => AppTextStyles.SMALLER_TEXT_STYLE;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(HomeOverViewScreenRoute());
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            imageView(context),
            titleView(),
          ],
        ),
      ),
    );
  }

  Widget imageView(context) => Container(
        height: 200,
        // width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        )),
      );

  Widget titleView() => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: titleStyle(),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "140 м2",
                  style: titleStyle(),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "3,5-6 млн ₽",
                  style: titleStyle(),
                ),
              ],
            ),
            AppStyles.heightDivider(10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "BLYSKÄR ",
                    style: titleStyle(),
                  ),
                  TextSpan(
                    text:
                        "Недавно Проект–Сервис запустил линейку домов из клееного бруса. Отличительной чертой ... еще",
                    style: subStyle(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
