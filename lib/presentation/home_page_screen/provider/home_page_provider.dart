import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/presentation/home_page_screen/models/home_page_model.dart';

/// A provider class for the HomePageScreen.
///
/// This provider manages the state of the HomePageScreen, including the
/// current homePageModelObj

// ignore_for_file: must_be_immutable
class HomePageProvider extends ChangeNotifier {
  HomePageModel homePageModelObj = HomePageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
