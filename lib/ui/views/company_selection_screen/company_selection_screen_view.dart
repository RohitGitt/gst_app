import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task_one/ui/common/app_colors.dart';
import 'package:task_one/ui/common/app_strings.dart';
import 'package:task_one/ui/common/ui_components/custom_button.dart';
import 'package:task_one/utility/extensions/percentOf.dart';
import 'package:velocity_x/velocity_x.dart';

import 'company_selection_screen_viewmodel.dart';

class CompanySelectionScreenView
    extends StackedView<CompanySelectionScreenViewModel> {
  const CompanySelectionScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CompanySelectionScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  SafeArea(
          child:VxBox(
            child: VStack(
              [
                SizedBox(height: 5.percentageOf(context.screenHeight),),
                CustomButton(width: double.infinity,height: 10.percentageOf(context.screenHeight),  title: "ABC Private Limited" , textStyle: const TextStyle(fontWeight: FontWeight.w500 , fontSize: 20) , titleTextColor: kcBlackColor, buttonColor: kcWhiteColor, borderWidth: 3, ),
                SizedBox(height: 5.percentageOf(context.screenHeight),),
                
                CustomButton(width: double.infinity,height: 10.percentageOf(context.screenHeight), textStyle: const TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),  title: "ABC Private Limited" , titleTextColor: kcBlackColor, buttonColor:const  Color.fromARGB(255, 226, 227, 228), borderWidth: 3, ),
                SizedBox(height: 5.percentageOf(context.screenHeight),),
                
                CustomButton(width: double.infinity,height: 10.percentageOf(context.screenHeight),  title: "ABC Private Limited" , titleTextColor: kcBlackColor, textStyle: const TextStyle(fontWeight: FontWeight.w500 , fontSize: 20) ,  buttonColor:const  Color.fromARGB(255, 226, 227, 228) , borderWidth: 3, ),
                SizedBox(height: 10.percentageOf(context.screenHeight),),
                
                const CustomButton(width: double.infinity, title: kcContinue)
              ]
            )
          )
          .width(context.screenWidth).height(context.screenHeight)
          .make().p(10.percentageOf(context.screenWidth))
         
        ),
    );
  }

  @override
  CompanySelectionScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CompanySelectionScreenViewModel();
}
