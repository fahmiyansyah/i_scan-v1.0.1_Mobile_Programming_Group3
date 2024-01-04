import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/presentation/scan_ing_page_screen/models/scan_ing_page_model.dart';

/// A provider class for the ScanIngPageScreen.
///
/// This provider manages the state of the ScanIngPageScreen, including the
/// current scanIngPageModelObj

// ignore_for_file: must_be_immutable
class ScanIngPageProvider extends ChangeNotifier {
  ScanIngPageModel scanIngPageModelObj = ScanIngPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
