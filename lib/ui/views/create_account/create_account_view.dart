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

import 'create_account_viewmodel.dart';

// ignore: must_be_immutable
class CreateAccountView extends StackedView<CreateAccountViewModel> {
  final TextEditingController mobileNumberController = TextEditingController();
  bool enablePermission = false;

  CreateAccountView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreateAccountViewModel viewModel,
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
                    height: 7.percentageOf(context.screenHeight),
                    width: context.screenWidth,
                  ),
                  kcCYA.text
                      .textStyle(const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))
                      .make(),
                  SizedBox(
                    height: 3.percentageOf(context.screenHeight),
                    width: context.screenWidth,
                  ),
                  kcEY.text
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
                      child: VStack(
                [
                  VStack([
                    CustomTextInputField(
                      width: double.infinity,
                      height: 6.percentageOf(context.screenHeight),
                      title: kcMN,
                      controller: viewModel.getEmailTextEditingController,
                      focusBorderColor: kcBlueColor,
                    ),
                    HStack(
                      [
                        Checkbox(
                          checkColor: kcBlackColor,
                          activeColor: const Color.fromARGB(255, 137, 133, 133),
                          value: viewModel.permission,
                          onChanged: (value) {
                            viewModel.setPermission(value);
                          },
                        ).objectCenterLeft().box.make(),
                        Expanded(
                            child: kcPermission.text
                                .textStyle(const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kcBlackColor))
                                .softWrap(true)
                                .overflow(TextOverflow.visible)
                                .make())
                      ],
                      alignment: MainAxisAlignment.start,
                      crossAlignment: CrossAxisAlignment.center,
                    ).box.width(double.infinity).make()
                  ]).box.width(double.infinity).make(),
                  CustomButton(
                    width: double.infinity,
                    title: kcSOTP,
                    
                    onClick: () {
                      
                      final bool isNumberValid =  viewModel.isNumberFormatValid(viewModel.getEmailTextEditingController.text);
                      
                      if(isNumberValid == true){
                        viewModel.clearTextEditingControllers();
                        viewModel.navigateToOtpVerificationScreenView();
                      }else{
                        showCustomSnackBar(context: context, message: "Enter Valid Number");
                      }
                    },
                  )
                ],
                alignment: MainAxisAlignment.spaceBetween,
              ).box.width(double.infinity).height(double.infinity).make())
                  .width(context.screenWidth)
                  .height(50.percentageOf(context.screenHeight))
                  .color(Colors.white)
                  .customRounded(const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)))
                  .padding(EdgeInsets.all(5.percentageOf(context.screenHeight)))
                  .make())
        ]))
            .width(context.screenWidth)
            .height(context.screenHeight)
            .make(),
      ),
    );
  }

  @override
  CreateAccountViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CreateAccountViewModel();
}
