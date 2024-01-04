import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/presentation/scan_ingredients_result_page_screen/models/scan_ingredients_result_page_model.dart';

/// A provider class for the ScanIngredientsResultPageScreen.
///
/// This provider manages the state of the ScanIngredientsResultPageScreen, including the
/// current scanIngredientsResultPageModelObj

// ignore_for_file: must_be_immutable
class ScanIngredientsResultPageProvider extends ChangeNotifier {
  TextEditingController containerController = TextEditingController();

  TextEditingController containerController1 = TextEditingController();

  ScanIngredientsResultPageModel scanIngredientsResultPageModelObj =
      ScanIngredientsResultPageModel();

  @override
  void dispose() {
    super.dispose();
    containerController.dispose();
    containerController1.dispose();
  }
}
