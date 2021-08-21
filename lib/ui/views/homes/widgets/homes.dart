import 'package:carousel_slider/carousel_slider.dart';
import 'package:domovedov/base/images.dart';
import 'package:domovedov/ui/style/size.dart';
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

class HomeItem extends StatefulWidget {
  final String title;
  final String subtitle;
  final String image;
  const HomeItem({
    Key? key,
    required this.title,
    this.image = AppImages.h1,
    required this.subtitle,
  }) : super(key: key);

  @override
  _HomeItemState createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  int curentIndex = 0;

  TextStyle titleStyle() => AppTextStyles.SMALL_TEXT_STYLE;

  TextStyle subStyle() => AppTextStyles.SMALLER_TEXT_STYLE;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(HomeOverViewScreenRoute());
      },
      child: Container(
        color: Colors.white,
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

  Widget imageView(context) => Stack(
        children: [
          CarouselSlider(
            items: [
              img(),
              img(),
              img(),
            ],
            options: CarouselOptions(
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  curentIndex = index;
                });
              },
              height: AppSizes.dHeight(300),
              viewportFraction: 1,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: AppSizes.dHeight(10),
            child: CarouseIndicator(
              curentIndex: curentIndex,
              length: 4,
            ),
          ),
        ],
      );

  Widget img() => Container(
        height: AppSizes.dHeight(251),
        constraints: BoxConstraints(
          minHeight: 251,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            widget.image,
          ),
          fit: BoxFit.cover,
        )),
      );

  Widget titleView() => Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.dWidth(20),
          vertical: AppSizes.dHeight(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: titleStyle(),
                ),
                SizedBox(
                  width: AppSizes.dHeight(10),
                ),
                Text(
                  "140 м2",
                  style: titleStyle(),
                ),
                AppStyles.widthDivider(
                  AppSizes.dWidth(10),
                ),
                Text(
                  "3,5-6 млн ₽",
                  style: titleStyle(),
                ),
              ],
            ),
            AppStyles.heightDivider(
              AppSizes.dHeight(10),
            ),
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

class CarouseIndicator extends StatelessWidget {
  final int length;
  final int curentIndex;
  const CarouseIndicator({
    Key? key,
    required this.curentIndex,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            length,
            (index) => Container(
                  margin: EdgeInsets.only(
                    right: index != length - 1 ? 10 : 0,
                  ),
                  width: AppSizes.dHeight(10),
                  height: AppSizes.dHeight(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: index == curentIndex
                          ? Colors.white.withOpacity(
                              1,
                            )
                          : Colors.white.withOpacity(
                              0.7,
                            ),
                    ),
                    color: index == curentIndex
                        ? Colors.white.withOpacity(
                            1,
                          )
                        : Colors.white.withOpacity(
                            0.7,
                          ),
                  ),
                )),
      ),
    );
  }
}
