import 'package:domovedov/ui/views/home/home_viewmodel.dart';
import 'package:domovedov/ui/views/home/widgets/bottom_bar.dart';
import 'package:domovedov/ui/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends ViewModelWidget<HomeViewModel> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return AppScaffold(
      child: Column(
        children: [
          body(model),
          bottomBar(),
        ],
      ),
    );
  }

  Widget body(HomeViewModel viewModel) => Expanded(
        child: Container(
          child: viewModel.curentScreen,
        ),
      );

  Widget bottomBar() => AppBottomNavigationBar();
}
