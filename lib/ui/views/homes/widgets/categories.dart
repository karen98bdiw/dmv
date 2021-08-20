import 'package:domovedov/ui/style/size.dart';
import 'package:domovedov/ui/style/styles.dart';
import 'package:domovedov/ui/views/home/home_viewmodel.dart';
import 'package:domovedov/ui/views/homes/homes_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Categories extends ViewModelWidget<HomesViewModel> {
  const Categories({Key? key}) : super(key: key);

  Widget separatorbuilder(c, i) => SizedBox(width: AppSizes.dWidth(7));

  Widget itembuilder(
    c,
    i,
  ) =>
      Container(
          margin: i == 0
              ? EdgeInsets.only(left: AppSizes.dWidth(20))
              : EdgeInsets.zero,
          child: CatergoryItem(itemIndex: i));

  @override
  Widget build(BuildContext context, model) {
    return Container(
      alignment: Alignment.center,
      height: AppSizes.dHeight(40),
      width: double.infinity,
      child: ListView.separated(
        separatorBuilder: separatorbuilder,
        scrollDirection: Axis.horizontal,
        itemBuilder: itembuilder,
        itemCount: model.categiries.length,
      ),
    );
  }
}

class CatergoryItem extends ViewModelWidget<HomesViewModel> {
  final int itemIndex;
  const CatergoryItem({
    Key? key,
    required this.itemIndex,
  }) : super(key: key);

  TextStyle getTextStyle(HomesViewModel model) {
    return itemIndex == model.curentCategoryIndex
        ? AppTextStyles.CHECKED_CATEGORY_TEXT_STYLE
        : AppTextStyles.UNCHECKED_CATEGORY_TEXT_STYLE;
  }

  @override
  Widget build(BuildContext context, model) {
    return GestureDetector(
      onTap: () => model.onCategoryItemTap(itemIndex),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: itemIndex != model.curentCategoryIndex
              ? Border.all(
                  width: 1, color: AppColors.UNCHECKED_CATEGORY_BORDER_COLOR)
              : null,
          color: itemIndex == model.curentCategoryIndex
              ? AppColors.checkedCategoryColor
              : AppColors.uncheckedCategoryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.dWidth(20),
        ),
        child: Text(
          model.categiries[itemIndex],
          style: getTextStyle(model),
        ),
      ),
    );
  }
}
