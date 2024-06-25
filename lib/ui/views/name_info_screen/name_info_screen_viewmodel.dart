import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task_one/app/app.locator.dart';
import 'package:task_one/app/app.router.dart';

class NameInfoScreenViewModel extends BaseViewModel {
  
  final NavigationService _navigator = locator<NavigationService>();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  final FocusNode firstNameFocusNode = FocusNode();
  final FocusNode lastNameFocusNode = FocusNode();




  void navigateToSetUpBusinessAccountScreenView(String firstName) {
    _navigator.navigateToSetupBusinessAccountScreenView(firstName: firstName);
  }

  TextEditingController getFirstNameController(){
    return _firstNameController ;
  }

  TextEditingController getLastNameController(){
    return _lastNameController ; 
  }

  void clearTextEditingControllers(){
    _firstNameController.clear();
    _lastNameController.clear(); 
  }

  void runCleanUp() {

    _firstNameController.dispose();
    _lastNameController.dispose();
    
  }
}
