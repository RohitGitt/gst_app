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

import 'setup_business_account_screen_viewmodel.dart';

class SetupBusinessAccountScreenView
    extends StackedView<SetupBusinessAccountScreenViewModel> {
  final String firstName;
  const SetupBusinessAccountScreenView({Key? key, required this.firstName})
      : super(key: key);

  @override
  void onDispose(SetupBusinessAccountScreenViewModel viewModel) {
    viewModel.runCleanUp();
    super.onDispose(viewModel);
  }
  

  @override
  Widget builder(
    BuildContext context,
    SetupBusinessAccountScreenViewModel viewModel,
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
                  CustomAppLogoUi(
                    imagePath: Assets.images.appLogo.path,
                    width: context.percentWidth * 20,
                    containerBgColor: kcBlackColor,
                    imageBgColor: kcWhiteColor,
                  )
                      .box
                      .margin(EdgeInsets.only(
                          top: 0.5.percentageOf(context.screenHeight)))
                      .make(),
                  SizedBox(
                    height: 3.percentageOf(context.screenHeight),
                    width: context.screenWidth,
                  ),
                  "Hello $firstName"
                      .text
                      .textStyle(const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: kcWhiteColor))
                      .make(),
                  SizedBox(
                    height: 3.percentageOf(context.screenHeight),
                    width: context.screenWidth,
                  ),
                  "Lets set-up Your"
                      .text
                      .textStyle(const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: kcWhiteColor))
                      .make(),
                  "Bussiness Account"
                      .text
                      .textStyle(const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: kcWhiteColor))
                      .make(),
                ],
                crossAlignment: CrossAxisAlignment.center,
              )
                  .box
                  .width(context.screenWidth)
                  .height(context.screenHeight)
                  .color(kcBlackColor)
                  .make()),
          Positioned(
              bottom: 0,
              child: VxBox(
                      child: VxBox(
                          child: VStack(
                [
                  VStack(
                    [
                      VStack(
                        [
                          "Enter Your Email-Id"
                              .text
                              .textStyle(const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20))
                              .make(),
                          "register with GST"
                              .text
                              .textStyle(const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22))
                              .make(),
                        ],
                        crossAlignment: CrossAxisAlignment.center,
                      ),
                      SizedBox(
                        height: 3.percentageOf(context.screenHeight),
                      ),
                      CustomTextInputField(
                        controller: viewModel.emailTextController,
                        borderColor: kcBlackColor,
                        focusBorderColor: kcBlueColor,
                        
                      ),
                    ],
                    crossAlignment: CrossAxisAlignment.center,
                  ).box.width(double.infinity).make(),
                  CustomButton(
                    width: double.infinity,
                    title: kcContinue,
                    titleTextColor: kcWhiteColor,
                    buttonColor: kcBlackColor,
                    onClick: (){
                      bool isEmailValid = viewModel.isEmailValid(viewModel.emailTextController.text);
                      if(isEmailValid.isFalse()){
                        showCustomSnackBar(context: context, message: "Please Enter Valid Email");
                      }else{
                        // send email to server and navigate 
                        viewModel.runCleanUp();
                        viewModel.navigateToSettingUpAccountScreenView();
                      }
                    },
                  )
                ],
                alignment: MainAxisAlignment.spaceBetween,
                crossAlignment: CrossAxisAlignment.center,
              )).width(double.infinity).height(double.infinity).make())
                  .width(context.screenWidth)
                  .height(65.percentageOf(context.screenHeight))
                  .color(kcWhiteColor)
                  .customRounded(const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)))
                  .padding(EdgeInsets.all(7.percentageOf(context.screenHeight)))
                  .make())
        ]))
            .width(context.screenWidth)
            .height(context.screenHeight)
            .make()
         ,
      ),
    );
  }

  @override
  SetupBusinessAccountScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SetupBusinessAccountScreenViewModel();
}
