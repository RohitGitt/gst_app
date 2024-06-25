import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task_one/app/app.locator.dart';
import 'package:task_one/app/app.router.dart';

class SettingUpAccountScreenViewModel extends BaseViewModel {

  final NavigationService _navigatorService = locator<NavigationService>();

  void navigateToCompanySelectionScreen(){
    _navigatorService.navigateToCompanySelectionScreenView();
  }
}
