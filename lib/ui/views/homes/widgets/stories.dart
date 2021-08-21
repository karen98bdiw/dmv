import 'package:domovedov/ui/style/size.dart';
import 'package:domovedov/ui/style/styles.dart';
import 'package:domovedov/ui/views/homes/homes_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomesStories extends ViewModelWidget<HomesViewModel> {
  const HomesStories({Key? key}) : super(key: key);

  Widget itemBuilder(
    BuildContext context,
    int index,
    StoryItem item,
  ) =>
      Container(
        margin: index == 0
            ? AppStyles.storiesListFirstItemLeftMargin
            : EdgeInsets.zero,
        child: StoryItem(
          title: item.title,
          asset: item.asset,
        ),
      );

  Widget separatorBuilder(BuildContext context, int index) => SizedBox(
        width: 10,
      );

  @override
  Widget build(
    BuildContext context,
    model,
  ) {
    print("Homes Stories build ");
    return Container(
      margin: EdgeInsets.only(
        top: AppSizes.dHeight(20),
      ),
      height: AppSizes.dHeight(151),
      constraints: BoxConstraints(
        minHeight: 151,
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (c, i) => itemBuilder(c, i, model.stories[i]),
        separatorBuilder: separatorBuilder,
        itemCount: model.stories.length,
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final String title;
  final String asset;
  const StoryItem({
    Key? key,
    required this.title,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(
            asset,
          ),
          fit: BoxFit.fill,
        ),
      ),
      height: double.infinity,
      width: AppSizes.dWidth(101),
      padding: EdgeInsets.all(AppSizes.dHeight(10)),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 11,
        ),
      ),
    );
  }
}
