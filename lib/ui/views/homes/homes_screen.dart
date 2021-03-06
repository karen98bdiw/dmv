import 'package:domovedov/ui/style/styles.dart';
import 'package:domovedov/ui/views/homes/homes_viewmodel.dart';
import 'package:domovedov/ui/views/homes/widgets/categories.dart';
import 'package:domovedov/ui/views/homes/widgets/homes.dart';
import 'package:domovedov/ui/views/homes/widgets/stories.dart';
import 'package:domovedov/ui/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomesScreen extends ViewModelWidget<HomesViewModel> {
  const HomesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, _) {
    print("home screen build");
    return AppScaffold(
      usePadding: false,
      color: Colors.white,
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomesStories(),
              title(),
              Categories(),
              Homes(),
            ],
          ),
        ),
      ),
    );
  }

  Widget title() => Padding(
        padding: AppPaddings.screenTitlePadding,
        child: Text(
          "Московская Область",
          style: AppTextStyles.SCREEN_TITLE_STYLE,
        ),
      );
}
