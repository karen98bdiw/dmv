import 'package:domovedov/ui/views/home/home_viewmodel.dart';
import 'package:domovedov/ui/views/homes/homes_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Categories extends ViewModelWidget<HomesViewModel> {
  const Categories({Key? key}) : super(key: key);

  Widget separatorbuilder(c, i) => SizedBox(width: 20);

  Widget itembuilder(
    c,
    i,
  ) =>
      Container(
          margin: i == 0 ? EdgeInsets.only(left: 20) : EdgeInsets.zero,
          child: CatergoryItem(itemIndex: i));

  @override
  Widget build(BuildContext context, model) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: double.infinity,
        child: ListView.separated(
          separatorBuilder: separatorbuilder,
          scrollDirection: Axis.horizontal,
          itemBuilder: itembuilder,
          itemCount: model.categiries.length,
        ),
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

  @override
  Widget build(BuildContext context, model) {
    return GestureDetector(
      onTap: () => model.onCategoryItemTap(itemIndex),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: itemIndex == model.curentCategoryIndex
              ? Colors.grey
              : Colors.green,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          model.categiries[itemIndex],
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
