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
    String title,
  ) =>
      Container(
          margin: index == 0
              ? AppStyles.storiesListFirstItemLeftMargin
              : EdgeInsets.zero,
          child: StoryItem(title: title));

  Widget separatorBuilder(BuildContext context, int index) => SizedBox(
        width: 20,
      );

  @override
  Widget build(
    BuildContext context,
    model,
  ) {
    print("Homes Stories build");
    return Container(
      height: AppSizes.storyListHeight,
      child: ListView.separated(
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
  const StoryItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      height: double.infinity,
      width: AppSizes.storyItemWidth,
      child: Center(child: Text(title)),
    );
  }
}
