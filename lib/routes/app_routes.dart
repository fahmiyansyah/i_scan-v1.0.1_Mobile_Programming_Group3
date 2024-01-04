import 'package:flutter/material.dart';
import 'package:i_scan/presentation/splash_screen/splash_screen.dart';
import 'package:i_scan/presentation/manage_profile_page_screen/manage_profile_page_screen.dart';
import 'package:i_scan/presentation/switch_account_page_screen/switch_account_page_screen.dart';
import 'package:i_scan/presentation/home_page_screen/home_page_screen.dart';
import 'package:i_scan/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:i_scan/presentation/scan_page_screen/scan_page_screen.dart';
import 'package:i_scan/presentation/scan_ingredients_page_screen/scan_ingredients_page_screen.dart';
import 'package:i_scan/presentation/scan_ing_page_screen/scan_ing_page_screen.dart';
import 'package:i_scan/presentation/export_page_screen/export_page_screen.dart';
import 'package:i_scan/presentation/history_page_screen/history_page_screen.dart';
import 'package:i_scan/presentation/scan_ingredients_result_page_screen/scan_ingredients_result_page_screen.dart';
import 'package:i_scan/presentation/scan_ing_result_screen/scan_ing_result_screen.dart';
import 'package:i_scan/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String manageProfilePageScreen = '/manage_profile_page_screen';

  static const String switchAccountPageScreen = '/switch_account_page_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String scanPageScreen = '/scan_page_screen';

  static const String scanIngredientsPageScreen =
      '/scan_ingredients_page_screen';

  static const String scanIngPageScreen = '/scan_ing_page_screen';

  static const String exportPageScreen = '/export_page_screen';

  static const String historyPageScreen = '/history_page_screen';

  static const String scanIngredientsResultPageScreen =
      '/scan_ingredients_result_page_screen';

  static const String scanIngResultScreen = '/scan_ing_result_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        manageProfilePageScreen: ManageProfilePageScreen.builder,
        switchAccountPageScreen: SwitchAccountPageScreen.builder,
        homePageScreen: HomePageScreen.builder,
        profilePageScreen: ProfilePageScreen.builder,
        scanPageScreen: ScanPageScreen.builder,
        scanIngredientsPageScreen: ScanIngredientsPageScreen.builder,
        scanIngPageScreen: ScanIngPageScreen.builder,
        exportPageScreen: ExportPageScreen.builder,
        historyPageScreen: HistoryPageScreen.builder,
        scanIngredientsResultPageScreen:
            ScanIngredientsResultPageScreen.builder,
        scanIngResultScreen: ScanIngResultScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
