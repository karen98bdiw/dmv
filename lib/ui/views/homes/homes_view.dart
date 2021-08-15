import 'package:domovedov/ui/views/home/home_viewmodel.dart';
import 'package:domovedov/ui/views/homes/homes_screen.dart';
import 'package:domovedov/ui/views/homes/homes_viewmodel.dart';
import 'package:domovedov/ui/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomesViewRoute extends MaterialPageRoute {
  HomesViewRoute()
      : super(
          builder: (c) => HomesView(),
        );
}

class HomesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomesViewModel>.nonReactive(
      builder: (BuildContext context, HomesViewModel model, Widget? child) =>
          HomesScreen(),
      viewModelBuilder: () => HomesViewModel(context),
    );
  }
}
