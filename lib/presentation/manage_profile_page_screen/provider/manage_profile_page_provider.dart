import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/presentation/manage_profile_page_screen/models/manage_profile_page_model.dart';

/// A provider class for the ManageProfilePageScreen.
///
/// This provider manages the state of the ManageProfilePageScreen, including the
/// current manageProfilePageModelObj

// ignore_for_file: must_be_immutable
class ManageProfilePageProvider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController kgvalueController = TextEditingController();

  TextEditingController cmvalueController = TextEditingController();

  TextEditingController inputFieldController = TextEditingController();

  TextEditingController inputFieldController1 = TextEditingController();

  ManageProfilePageModel manageProfilePageModelObj = ManageProfilePageModel();

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
    kgvalueController.dispose();
    cmvalueController.dispose();
    inputFieldController.dispose();
    inputFieldController1.dispose();
  }

  onSelected(dynamic value) {
    for (var element in manageProfilePageModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in manageProfilePageModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
