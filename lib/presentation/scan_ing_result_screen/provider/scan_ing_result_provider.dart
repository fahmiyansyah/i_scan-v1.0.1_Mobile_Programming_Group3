import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/presentation/scan_ing_result_screen/models/scan_ing_result_model.dart';

/// A provider class for the ScanIngResultScreen.
///
/// This provider manages the state of the ScanIngResultScreen, including the
/// current scanIngResultModelObj

// ignore_for_file: must_be_immutable
class ScanIngResultProvider extends ChangeNotifier {
  TextEditingController grvalueController = TextEditingController();

  TextEditingController grvalueController1 = TextEditingController();

  TextEditingController outputContainerController = TextEditingController();

  ScanIngResultModel scanIngResultModelObj = ScanIngResultModel();

  @override
  void dispose() {
    super.dispose();
    grvalueController.dispose();
    grvalueController1.dispose();
    outputContainerController.dispose();
  }
}
