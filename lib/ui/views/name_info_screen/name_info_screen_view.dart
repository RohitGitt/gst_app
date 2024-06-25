import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task_one/gen/assets.gen.dart';
import 'package:task_one/ui/common/app_colors.dart';
import 'package:task_one/ui/common/app_strings.dart';
import 'package:task_one/ui/common/ui_components/custom_app_logo_ui.dart';
import 'package:task_one/ui/common/ui_components/custom_button.dart';
import 'package:task_one/ui/common/ui_components/custom_text_input_field.dart';
import 'package:task_one/utility/extensions/percentOf.dart';
import 'package:task_one/utility/functions/showSnackBar.dart';
import 'package:velocity_x/velocity_x.dart';

import 'name_info_screen_viewmodel.dart';

class NameInfoScreenView extends StackedView<NameInfoScreenViewModel> {
  const NameInfoScreenView({Key? key}) : super(key: key);

  @override
  void onDispose(NameInfoScreenViewModel viewModel) {

    super.onDispose(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    NameInfoScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: VxBox(
                child: ZStack([
          Positioned(
              width: context.screenWidth,
              height: context.screenHeight,
              child: VStack(
                [
                  SizedBox(
                    height: 7.percentageOf(context.screenHeight),
                    width: context.screenWidth,
                  ),
                  CustomAppLogoUi(
                    imagePath: Assets.images.appLogo.path,
                    width: context.percentWidth * 20,
                    containerBgColor: Colors.white,
                    imageBgColor: kcBlackColor,
                  ),
                  SizedBox(
                    height: 5.percentageOf(context.screenHeight),
                    width: context.screenWidth,
                  ),
                  kcPTYN.text
                      .textStyle(const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: kcBlackColor))
                      .make(),
                ],
                crossAlignment: CrossAxisAlignment.center,
              )
                  .box
                  .width(context.screenWidth)
                  .height(context.screenHeight)
                  .color(Colors.white)
                  .make()),
          Positioned(
              bottom: 0,
              child: VxBox(
                      child: VxBox(
                          child: VStack(
                [
                  VStack(
                    [
                      CustomTextInputField(
                        title: "First Name",
                        titleColor: Colors.white,
                        borderColor: Colors.white,
                        textColor: kcWhiteColor,
                        controller: viewModel.getFirstNameController(),
                        focusNode: viewModel.firstNameFocusNode,
                        focusBorderColor: kcBlueColor,
                        
                      ),
                      SizedBox(
                        height: 3.percentageOf(context.screenHeight),
                      ),
        
                      CustomTextInputField(
                        title: "Last Name",
                        titleColor: Colors.white,
                        borderColor: Colors.white,
                        textColor: kcWhiteColor,
                        controller: viewModel.getLastNameController(),
                        focusNode: viewModel.lastNameFocusNode,
                        focusBorderColor: kcBlueColor,
                      ),
                    ],
                    crossAlignment: CrossAxisAlignment.center,
                  ).box.width(double.infinity).make(),
        
        
                  CustomButton(
                    width: double.infinity,
                    title: kcContinue,
                    titleTextColor: kcBlackColor,
                    buttonColor: Colors.white,
                    onClick: (){
                      if(viewModel.getFirstNameController().text.isEmptyOrNull || viewModel.getLastNameController().text.isEmptyOrNull){
                        showCustomSnackBar(context: context, message: "Fill all Fields");
                      }else{
                        String name =  viewModel.getFirstNameController().text ;
                        viewModel.clearTextEditingControllers();
                        viewModel.navigateToSetUpBusinessAccountScreenView(name);
        
                      }
                    },
                  )
                ],
                alignment: MainAxisAlignment.spaceBetween,
                crossAlignment: CrossAxisAlignment.center,
              )).width(double.infinity).height(double.infinity).make())
                  .width(context.screenWidth)
                  .height(65.percentageOf(context.screenHeight))
                  .color(kcBlackColor)
                  .customRounded(const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)))
                  .padding(EdgeInsets.all(7.percentageOf(context.screenHeight)))
                  .make())
        ]))
            .width(context.screenWidth)
            .height(context.screenHeight)
            .make(),
      ),
    );
  }

  @override
  NameInfoScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NameInfoScreenViewModel();
}
