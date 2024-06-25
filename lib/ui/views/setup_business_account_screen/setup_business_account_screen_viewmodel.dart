import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task_one/app/app.locator.dart';
import 'package:task_one/app/app.router.dart';

class SetupBusinessAccountScreenViewModel extends BaseViewModel {
  final NavigationService _navigator = locator<NavigationService>();

  final TextEditingController _emailTextController = TextEditingController();

  TextEditingController get emailTextController => _emailTextController;

  void navigateToSettingUpAccountScreenView() {
    _navigator.navigateToSettingUpAccountScreenView();
  }

  bool isEmailValid(String email) {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,6}$',
    );

    return emailRegex.hasMatch(email);
  }

  void runCleanUp(){
    _emailTextController.clear();
    
  }
}
