import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/presentation/scan_ingredients_page_screen/models/scan_ingredients_page_model.dart';

/// A provider class for the ScanIngredientsPageScreen.
///
/// This provider manages the state of the ScanIngredientsPageScreen, including the
/// current scanIngredientsPageModelObj

// ignore_for_file: must_be_immutable
class ScanIngredientsPageProvider extends ChangeNotifier {
  ScanIngredientsPageModel scanIngredientsPageModelObj =
      ScanIngredientsPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
