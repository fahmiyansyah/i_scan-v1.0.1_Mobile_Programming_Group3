import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/presentation/scan_page_screen/models/scan_page_model.dart';

/// A provider class for the ScanPageScreen.
///
/// This provider manages the state of the ScanPageScreen, including the
/// current scanPageModelObj

// ignore_for_file: must_be_immutable
class ScanPageProvider extends ChangeNotifier {
  ScanPageModel scanPageModelObj = ScanPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
