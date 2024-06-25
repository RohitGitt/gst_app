import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task_one/gen/assets.gen.dart';
import 'package:task_one/ui/common/app_colors.dart';
import 'package:task_one/ui/common/app_strings.dart';
import 'package:task_one/ui/common/ui_components/custom_app_logo_ui.dart';
import 'package:task_one/ui/common/ui_components/custom_button.dart';
import 'package:task_one/ui/common/ui_components/custom_otp_text_field.dart';
import 'package:task_one/utility/extensions/percentOf.dart';
import 'package:task_one/utility/functions/showSnackBar.dart';
import 'package:velocity_x/velocity_x.dart';

import 'otp_verification_screen_viewmodel.dart';

class OtpVerificationScreenView
    extends StackedView<OtpVerificationScreenViewModel> {
  

  const OtpVerificationScreenView({
    Key? key,
  }) : super(key: key);

  @override
  void onDispose(OtpVerificationScreenViewModel viewModel) {

    viewModel.runCleanUp();
    super.onDispose(viewModel);
  }


  @override
  void onViewModelReady(OtpVerificationScreenViewModel viewModel) {
    // TODO: implement onViewModelReady
    super.onViewModelReady(viewModel);
  }

  

  

  @override
  Widget builder(
    BuildContext context,
    OtpVerificationScreenViewModel viewModel,
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
                    ),
                    SizedBox(
                      height: 5.percentageOf(context.screenHeight),
                      width: context.screenWidth,
                    ),
                    kcEOTP.text
                        .textStyle(const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.white))
                        .make(),
                    kcMN.text
                        .textStyle(const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.white))
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
                        HStack(
                          [
                            CustomOTPTextField(
                              controller: viewModel.getFirstOtpController(),
                              focusNode: viewModel.firstOtpFocusNode,
                              focusBorderColor: kcBlueColor,
                              onChanged: (newValue) {
                                onChangeHandler(
                                    context: context,
                                    newValue: newValue,
                                    controller: viewModel.getFirstOtpController(),
                                    nextFocusNode: viewModel.secondOtpFocusNode);
                              },
                            ),
                            SizedBox(
                              width: 6.percentageOf(context.screenWidth),
                            ),
                            CustomOTPTextField(
                              controller: viewModel.getSecondOtpController(),
                              focusNode: viewModel.secondOtpFocusNode,
                              focusBorderColor: kcBlueColor,
                              onChanged: (newValue) {
                                onChangeHandler(
                                    context: context,
                                    newValue: newValue,
                                    controller:viewModel.getSecondOtpController() ,
                                    nextFocusNode: viewModel.thirdOtpFocusNode);
                              },
                            ),
                            SizedBox(
                              width: 6.percentageOf(context.screenWidth),
                            ),
                            CustomOTPTextField(
                              controller: viewModel.getThirdOtpController(),
                              focusNode: viewModel.thirdOtpFocusNode,
                              focusBorderColor: kcBlueColor,
                              onChanged: (newValue) {
                                onChangeHandler(
                                    context: context,
                                    newValue: newValue,
                                    controller: viewModel.getThirdOtpController(),
                                    nextFocusNode: viewModel.fourthOtpFocusNode);
                              },
                            ),

                            SizedBox(
                              width: 6.percentageOf(context.screenWidth),
                            ),

                            CustomOTPTextField(
                              controller: viewModel.getFourthOtpController(),
                              focusNode: viewModel.fourthOtpFocusNode,
                              focusBorderColor: kcBlueColor,
                              onChanged: (newValue) {

                                if(newValue.length == 1){
                                  FocusScope.of(context).unfocus();

                                }else if (newValue.length > 1){
                                  viewModel.getFourthOtpController().text = viewModel.getFourthOtpController().text[0];
                                  showCustomSnackBar(context: context, message: "Only single digit can be entered");
                                }

                                // send otp to server and if authentication got successful and navigate to next screen.
                              },
                            ),
                          ],
                          alignment: MainAxisAlignment.center,
                        ).box.width(double.infinity).make(),

                        SizedBox(
                          height: 2.percentageOf(context.screenHeight),
                        ),

                        "Didn't receive OTP?"
                            .text
                            .textStyle(
                                const TextStyle(fontWeight: FontWeight.bold))
                            .make(),

                        SizedBox(
                          height: 1.percentageOf(context.screenHeight),
                        ),

                        "Resend OTP"
                            .text
                            .textStyle(const TextStyle(
                                color: kcBlackColor,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2))
                            .make(),
                        // Divider(thickness: 3, color: kcBlackColor,).box.width(5.percentageOf(context.screenWidth)).make()
                      ],
                      crossAlignment: CrossAxisAlignment.center,
                    ).box.width(double.infinity).make(),
                    VStack([
                      VStack(
                        [
                          "By prodeeding you are indicating that"
                              .text
                              .textStyle(const TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                              .make(),
                          "you have read and agree to our"
                              .text
                              .textStyle(const TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                              .make(),
                          HStack([
                            "Terms of Use"
                                .text
                                .textStyle(const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 2))
                                .make(),
                            " and "
                                .text
                                .textStyle(const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ))
                                .make(),
                            "Privacy Policy."
                                .text
                                .textStyle(const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 2))
                                .make()
                          ]),
                          SizedBox(
                            height: 1.percentageOf(context.screenHeight),
                          )
                        ],
                        crossAlignment: CrossAxisAlignment.center,
                      ).box.width(double.infinity).make(),
                      CustomButton(
                          width: double.infinity, title: "Continue",
                          onClick: (){
                             // check the otp authentication and go to next screen

                            
                            bool isAnyOptFieldEmpty = viewModel.isAnyOptTextFieldEmpty();

                            if(isAnyOptFieldEmpty.isFalse()){

                               FocusScope.of(context).requestFocus(viewModel.firstOtpFocusNode);
                            
                              viewModel.clearTextEditingControllers();

                              viewModel.navigateToNameInfoScreenView();
                            }else{
                              showCustomSnackBar(context: context, message: "Fill the All OTP Fields");
                            }

                           
                          },    
                      ) ,
                          
                          
                    ]).box.width(double.infinity).make()
                  ],
                  alignment: MainAxisAlignment.spaceBetween,
                  crossAlignment: CrossAxisAlignment.center,
                )).width(double.infinity).height(double.infinity).make())
                    .width(context.screenWidth)
                    .height(60.percentageOf(context.screenHeight))
                    .color(Colors.white)
                    .customRounded(const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)))
                    .padding(
                        EdgeInsets.all(5.percentageOf(context.screenHeight)))
                    .make())
          ]))
              .width(context.screenWidth)
              .height(context.screenHeight)
              .make()
          //     .onInkTap(() {
          //   viewModel.navigateToNameInfoScreenView();
          // }),
        ));
  }

  void onChangeHandler(
      {required BuildContext context,
      required TextEditingController controller ,
      required String newValue,
      FocusNode? nextFocusNode}) {
    
    print(" onChange is called");
    
    if (newValue.isEmptyOrNull) {
      return;
    }

    if ((newValue.length == 1)) {
      try {
        int.parse(newValue);
        if (nextFocusNode != null) {
          FocusScope.of(context).unfocus();
          FocusScope.of(context).requestFocus(nextFocusNode);
          return;
        }
      } catch (error) {
        controller.text = "";
        showCustomSnackBar(
            context: context, message: "Only Number Can be Entered");
        return;
      }
    }else if (newValue.length > 1){
      controller.text = controller.text[0];
      showCustomSnackBar(context: context, message: "Only single digit can be entered");
    }
  }

  @override
  OtpVerificationScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OtpVerificationScreenViewModel();
}

// second screen (Otp)
/*

*/

// Third Screen UI ( name and last name info)

/*
  
  */

// email register with GST screen

/*
 
    */

// setting up your account screen UI

/*

   
*/

/* 

 

*/
