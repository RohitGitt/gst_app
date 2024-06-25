import 'package:task_one/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:task_one/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:task_one/ui/views/home/home_view.dart';
import 'package:task_one/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:task_one/ui/views/create_account/create_account_view.dart';
import 'package:task_one/ui/views/otp_verification_screen/otp_verification_screen_view.dart';
import 'package:task_one/ui/views/name_info_screen/name_info_screen_view.dart';
import 'package:task_one/ui/views/setup_business_account_screen/setup_business_account_screen_view.dart';
import 'package:task_one/ui/views/setting_up_account_screen/setting_up_account_screen_view.dart';
import 'package:task_one/ui/views/company_selection_screen/company_selection_screen_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: CreateAccountView),
    MaterialRoute(page: OtpVerificationScreenView),
    MaterialRoute(page: NameInfoScreenView),
    MaterialRoute(page: SetupBusinessAccountScreenView),
    MaterialRoute(page: SettingUpAccountScreenView),
    MaterialRoute(page: CompanySelectionScreenView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
