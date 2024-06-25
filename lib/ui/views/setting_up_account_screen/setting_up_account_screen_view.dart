import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task_one/ui/common/app_colors.dart';
import 'package:task_one/utility/extensions/percentOf.dart';
import 'package:velocity_x/velocity_x.dart';

import 'setting_up_account_screen_viewmodel.dart';

class SettingUpAccountScreenView
    extends StackedView<SettingUpAccountScreenViewModel> {
  const SettingUpAccountScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SettingUpAccountScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:     ZStack(
            [
              VStack(
                [
                  "Setting-up your".text.textStyle(const TextStyle(fontWeight: FontWeight.bold , fontSize: 30 , color: kcWhiteColor)).make(),
                  "Account".text.textStyle(const TextStyle(fontWeight: FontWeight.bold , fontSize: 30 , color : kcWhiteColor)).make()
                ] ,
                crossAlignment: CrossAxisAlignment.center,
              ).centered() ,

              "this might take a while!".text.textStyle(const TextStyle(color: kcWhiteColor , fontSize: 16)).make().box.margin(EdgeInsets.only(bottom: 4.percentageOf(context.screenHeight))).make().objectBottomCenter()


            ] ,
            alignment: Alignment.center,
          ).box.color(kcBlackColor).width(context.screenWidth).height(context.screenHeight).make().onInkTap(() {
            viewModel.navigateToCompanySelectionScreen();
          })
        ,
    );
  }

  @override
  SettingUpAccountScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingUpAccountScreenViewModel();
}
