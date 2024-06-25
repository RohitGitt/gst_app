// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i11;
import 'package:task_one/ui/views/company_selection_screen/company_selection_screen_view.dart'
    as _i9;
import 'package:task_one/ui/views/create_account/create_account_view.dart'
    as _i4;
import 'package:task_one/ui/views/home/home_view.dart' as _i2;
import 'package:task_one/ui/views/name_info_screen/name_info_screen_view.dart'
    as _i6;
import 'package:task_one/ui/views/otp_verification_screen/otp_verification_screen_view.dart'
    as _i5;
import 'package:task_one/ui/views/setting_up_account_screen/setting_up_account_screen_view.dart'
    as _i8;
import 'package:task_one/ui/views/setup_business_account_screen/setup_business_account_screen_view.dart'
    as _i7;
import 'package:task_one/ui/views/startup/startup_view.dart' as _i3;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const createAccountView = '/create-account-view';

  static const otpVerificationScreenView = '/otp-verification-screen-view';

  static const nameInfoScreenView = '/name-info-screen-view';

  static const setupBusinessAccountScreenView =
      '/setup-business-account-screen-view';

  static const settingUpAccountScreenView = '/setting-up-account-screen-view';

  static const companySelectionScreenView = '/company-selection-screen-view';

  static const all = <String>{
    homeView,
    startupView,
    createAccountView,
    otpVerificationScreenView,
    nameInfoScreenView,
    setupBusinessAccountScreenView,
    settingUpAccountScreenView,
    companySelectionScreenView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.createAccountView,
      page: _i4.CreateAccountView,
    ),
    _i1.RouteDef(
      Routes.otpVerificationScreenView,
      page: _i5.OtpVerificationScreenView,
    ),
    _i1.RouteDef(
      Routes.nameInfoScreenView,
      page: _i6.NameInfoScreenView,
    ),
    _i1.RouteDef(
      Routes.setupBusinessAccountScreenView,
      page: _i7.SetupBusinessAccountScreenView,
    ),
    _i1.RouteDef(
      Routes.settingUpAccountScreenView,
      page: _i8.SettingUpAccountScreenView,
    ),
    _i1.RouteDef(
      Routes.companySelectionScreenView,
      page: _i9.CompanySelectionScreenView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.CreateAccountView: (data) {
      final args = data.getArgs<CreateAccountViewArguments>(
        orElse: () => const CreateAccountViewArguments(),
      );
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.CreateAccountView(key: args.key),
        settings: data,
      );
    },
    _i5.OtpVerificationScreenView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.OtpVerificationScreenView(),
        settings: data,
      );
    },
    _i6.NameInfoScreenView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.NameInfoScreenView(),
        settings: data,
      );
    },
    _i7.SetupBusinessAccountScreenView: (data) {
      final args =
          data.getArgs<SetupBusinessAccountScreenViewArguments>(nullOk: false);
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => _i7.SetupBusinessAccountScreenView(
            key: args.key, firstName: args.firstName),
        settings: data,
      );
    },
    _i8.SettingUpAccountScreenView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.SettingUpAccountScreenView(),
        settings: data,
      );
    },
    _i9.CompanySelectionScreenView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.CompanySelectionScreenView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class CreateAccountViewArguments {
  const CreateAccountViewArguments({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant CreateAccountViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class SetupBusinessAccountScreenViewArguments {
  const SetupBusinessAccountScreenViewArguments({
    this.key,
    required this.firstName,
  });

  final _i10.Key? key;

  final String firstName;

  @override
  String toString() {
    return '{"key": "$key", "firstName": "$firstName"}';
  }

  @override
  bool operator ==(covariant SetupBusinessAccountScreenViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.firstName == firstName;
  }

  @override
  int get hashCode {
    return key.hashCode ^ firstName.hashCode;
  }
}

extension NavigatorStateExtension on _i11.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCreateAccountView({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.createAccountView,
        arguments: CreateAccountViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOtpVerificationScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.otpVerificationScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNameInfoScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.nameInfoScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSetupBusinessAccountScreenView({
    _i10.Key? key,
    required String firstName,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.setupBusinessAccountScreenView,
        arguments: SetupBusinessAccountScreenViewArguments(
            key: key, firstName: firstName),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingUpAccountScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.settingUpAccountScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCompanySelectionScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.companySelectionScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCreateAccountView({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.createAccountView,
        arguments: CreateAccountViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOtpVerificationScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.otpVerificationScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNameInfoScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.nameInfoScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSetupBusinessAccountScreenView({
    _i10.Key? key,
    required String firstName,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.setupBusinessAccountScreenView,
        arguments: SetupBusinessAccountScreenViewArguments(
            key: key, firstName: firstName),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSettingUpAccountScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.settingUpAccountScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCompanySelectionScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.companySelectionScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
