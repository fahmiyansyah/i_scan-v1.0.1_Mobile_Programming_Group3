import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/presentation/export_page_screen/models/export_page_model.dart';

/// A provider class for the ExportPageScreen.
///
/// This provider manages the state of the ExportPageScreen, including the
/// current exportPageModelObj
class ExportPageProvider extends ChangeNotifier {
  ExportPageModel exportPageModelObj = ExportPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
