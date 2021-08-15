import 'package:domovedov/ui/views/home/home_screen.dart';
import 'package:domovedov/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

class HomeViewRoute extends MaterialPageRoute {
  HomeViewRoute() : super(builder: (c) => HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(context),
      onModelReady: (model) => model.onReade(),
      builder: (BuildContext context, HomeViewModel model, Widget? child) =>
          HomeScreen(),
    );
  }
}
