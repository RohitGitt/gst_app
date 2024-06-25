import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task_one/app/app.locator.dart';
import 'package:task_one/app/app.router.dart';
import 'package:velocity_x/velocity_x.dart';

class OtpVerificationScreenViewModel extends BaseViewModel {
  final NavigationService _navigator = locator<NavigationService>();

  final TextEditingController _firstOtpController = TextEditingController();
  final TextEditingController _secondOtpController = TextEditingController();
  final TextEditingController _thirdOtpController = TextEditingController();
  final TextEditingController _fourthOtpController = TextEditingController();

  final FocusNode firstOtpFocusNode = FocusNode();
  final FocusNode secondOtpFocusNode = FocusNode();
  final FocusNode thirdOtpFocusNode = FocusNode();
  final FocusNode fourthOtpFocusNode = FocusNode();



  void navigateToNameInfoScreenView() {
    _navigator.navigateToNameInfoScreenView();
  }

  TextEditingController getFirstOtpController() {
    return _firstOtpController ; 
  }


  TextEditingController getSecondOtpController() {
    return _secondOtpController ; 
  }

  TextEditingController getThirdOtpController() {
    return _thirdOtpController;
  }

  TextEditingController getFourthOtpController() {
    return _fourthOtpController; 
  }

  

  void runCleanUp(){

    _firstOtpController.dispose();
    _secondOtpController.dispose();
    _thirdOtpController.dispose();
    _fourthOtpController.dispose();

    firstOtpFocusNode.dispose();
    secondOtpFocusNode.dispose();
    thirdOtpFocusNode.dispose();
    fourthOtpFocusNode.dispose();
  }

  void clearTextEditingControllers() {
    _firstOtpController.clear();
    _secondOtpController.clear();
    _thirdOtpController.clear();
    _fourthOtpController.clear();
  }

  bool isAnyOptTextFieldEmpty() {
    if(_firstOtpController.text.isEmptyOrNull || _secondOtpController.text.isEmptyOrNull || _thirdOtpController.text.isEmptyOrNull || _fourthOtpController.text.isEmptyOrNull){
      return true;
    }else{
      return false;
    }
  }

  
}
