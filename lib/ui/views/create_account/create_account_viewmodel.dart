import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task_one/app/app.locator.dart';
import 'package:task_one/app/app.router.dart';

class CreateAccountViewModel extends BaseViewModel {
  final NavigationService _navigator = locator<NavigationService>();

  final TextEditingController _emailTextEditingController = TextEditingController();

  TextEditingController get getEmailTextEditingController => _emailTextEditingController ;

  bool permission = false;

  void setPermission(bool? value) {
    if (value != null) {
      permission = value;
      rebuildUi();
    }
  }

  void navigateToOtpVerificationScreenView() {
    _navigator.navigateToOtpVerificationScreenView();
  }


  bool isNumberFormatValid(String? number) {

    if(number == null){
      return false;
    }

    final regex = RegExp(r'^\d{10}$');

    try{
      final num = int.parse(number);
      return num.toString().length == 10 ? true : false ;

    }catch(err){
      return false ;
    }
  }


  void clearTextEditingControllers(){
    _emailTextEditingController.clear();
  }

  void runCleanUp(){
    _emailTextEditingController.dispose();
  }

}
