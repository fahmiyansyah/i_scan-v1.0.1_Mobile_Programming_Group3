import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/presentation/profile_page_screen/models/profile_page_model.dart';

/// A provider class for the ProfilePageScreen.
///
/// This provider manages the state of the ProfilePageScreen, including the
/// current profilePageModelObj

// ignore_for_file: must_be_immutable
class ProfilePageProvider extends ChangeNotifier {
  ProfilePageModel profilePageModelObj = ProfilePageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
