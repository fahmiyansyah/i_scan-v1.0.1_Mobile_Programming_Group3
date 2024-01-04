import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/presentation/switch_account_page_screen/models/switch_account_page_model.dart';
import '../models/userprofilesection_item_model.dart';

/// A provider class for the SwitchAccountPageScreen.
///
/// This provider manages the state of the SwitchAccountPageScreen, including the
/// current switchAccountPageModelObj

// ignore_for_file: must_be_immutable
class SwitchAccountPageProvider extends ChangeNotifier {
  SwitchAccountPageModel switchAccountPageModelObj = SwitchAccountPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
