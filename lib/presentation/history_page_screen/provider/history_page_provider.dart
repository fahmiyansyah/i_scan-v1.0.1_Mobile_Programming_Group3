import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/presentation/history_page_screen/models/history_page_model.dart';

/// A provider class for the HistoryPageScreen.
///
/// This provider manages the state of the HistoryPageScreen, including the
/// current historyPageModelObj
class HistoryPageProvider extends ChangeNotifier {
  TextEditingController keyFiveController = TextEditingController();

  TextEditingController keyFiveController1 = TextEditingController();

  HistoryPageModel historyPageModelObj = HistoryPageModel();

  @override
  void dispose() {
    super.dispose();
    keyFiveController.dispose();
    keyFiveController1.dispose();
  }
}
