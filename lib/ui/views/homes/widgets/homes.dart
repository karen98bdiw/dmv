import 'package:domovedov/ui/views/homes/homes_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class Homes extends ViewModelWidget<HomesViewModel> {
  const Homes({Key? key}) : super(key: key);

  Widget separatorBuilder(c, i) => SizedBox(
        height: 20,
      );

  @override
  Widget build(
    BuildContext context,
    model,
  ) {
    print("HOMES BUILD");
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(model),
            homes(model, context),
          ],
        ),
      ),
    );
  }

  Widget homes(HomesViewModel model, context) => Expanded(
        child: Container(
          child: ListView.separated(
            itemBuilder: (c, i) => HomeItem(title: model.homes[i]),
            separatorBuilder: separatorBuilder,
            itemCount: model.homes.length,
          ),
        ),
      );

  Widget title(HomesViewModel model) => Padding(
        padding: const EdgeInsets.all(20),
        child: Text(model.categiries[model.curentCategoryIndex]),
      );
}

class HomeItem extends StatelessWidget {
  final String title;
  final String image;
  const HomeItem({
    Key? key,
    required this.title,
    this.image = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.5,
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          imageView(context),
          titleView(),
        ],
      ),
    );
  }

  Widget imageView(context) => Container(
        height: 200,
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
      );

  Widget titleView() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title),
      );
}
