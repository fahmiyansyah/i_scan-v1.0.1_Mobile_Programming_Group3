import 'models/manage_profile_page_model.dart';
import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/widgets/app_bar/appbar_leading_image.dart';
import 'package:i_scan/widgets/app_bar/appbar_title.dart';
import 'package:i_scan/widgets/app_bar/custom_app_bar.dart';
import 'package:i_scan/widgets/custom_drop_down.dart';
import 'package:i_scan/widgets/custom_elevated_button.dart';
import 'package:i_scan/widgets/custom_text_form_field.dart';
import 'provider/manage_profile_page_provider.dart';

class ManageProfilePageScreen extends StatefulWidget {
  const ManageProfilePageScreen({Key? key}) : super(key: key);

  @override
  ManageProfilePageScreenState createState() => ManageProfilePageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ManageProfilePageProvider(),
        child: ManageProfilePageScreen());
  }
}

class ManageProfilePageScreenState extends State<ManageProfilePageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: 314.h,
                margin: EdgeInsets.symmetric(horizontal: 23.h),
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 18.v),
                decoration: AppDecoration.outlineGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Padding(
                      padding: EdgeInsets.only(left: 2.h, right: 3.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin: EdgeInsets.only(bottom: 1.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.h, vertical: 12.v),
                                decoration: AppDecoration.fillGreenA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 4.v),
                                      Container(
                                          height: 91.adaptSize,
                                          width: 91.adaptSize,
                                          decoration: AppDecoration
                                              .outlinePrimaryContainer,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgImage4,
                                                    height: 91.adaptSize,
                                                    width: 91.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                            45.h),
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgImage5,
                                                    height: 91.adaptSize,
                                                    width: 91.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                            45.h),
                                                    alignment: Alignment.center)
                                              ])),
                                      SizedBox(height: 17.v),
                                      SizedBox(
                                          width: 71.h,
                                          child: Text(
                                              "msg_select_profile_picture".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .labelMediumMedium))
                                    ])),
                            Column(children: [
                              _buildFirstNameInput(context),
                              SizedBox(height: 10.v),
                              _buildLastNameInput(context),
                              SizedBox(height: 11.v),
                              _buildDobInput(context)
                            ])
                          ])),
                  SizedBox(height: 16.v),
                  _buildGenderInput(context),
                  SizedBox(height: 13.v),
                  _buildPhoneNumberInput(context),
                  SizedBox(height: 13.v),
                  _buildWeightInput(context),
                  SizedBox(height: 13.v),
                  _buildHeightInput(context),
                  SizedBox(height: 13.v),
                  _buildAllergiesInput(context),
                  SizedBox(height: 24.v),
                  _buildIllnessInput(context),
                  SizedBox(height: 7.v)
                ])),
            bottomNavigationBar: _buildSaveButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 49.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGoBackButton,
            margin: EdgeInsets.only(left: 14.h, top: 18.v, bottom: 136.v),
            onTap: () {
              onTapGoBackButton(context);
            }),
        title: AppbarTitle(
            text: "msg_add_manage_profile".tr,
            margin: EdgeInsets.only(left: 5.h, top: 19.v, bottom: 134.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFirstNameInput(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_first_name".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 2.v),
      Selector<ManageProfilePageProvider, TextEditingController?>(
          selector: (context, provider) => provider.firstNameController,
          builder: (context, firstNameController, child) {
            return CustomTextFormField(
                width: 135.h, controller: firstNameController);
          })
    ]);
  }

  /// Section Widget
  Widget _buildLastNameInput(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text("lbl_last_name".tr, style: theme.textTheme.labelMedium)),
      SizedBox(height: 2.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Selector<ManageProfilePageProvider, TextEditingController?>(
              selector: (context, provider) => provider.lastNameController,
              builder: (context, lastNameController, child) {
                return CustomTextFormField(
                    width: 134.h, controller: lastNameController);
              }))
    ]);
  }

  /// Section Widget
  Widget _buildDobInput(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child:
              Text("lbl_date_of_birth".tr, style: theme.textTheme.labelMedium)),
      SizedBox(height: 2.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Selector<ManageProfilePageProvider, ManageProfilePageModel?>(
              selector: (context, provider) =>
                  provider.manageProfilePageModelObj,
              builder: (context, manageProfilePageModelObj, child) {
                return CustomDropDown(
                    width: 133.h,
                    hintText: "lbl_select".tr,
                    items: manageProfilePageModelObj?.dropdownItemList ?? [],
                    onChanged: (value) {
                      context
                          .read<ManageProfilePageProvider>()
                          .onSelected(value);
                    });
              }))
    ]);
  }

  /// Section Widget
  Widget _buildGenderInput(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text("lbl_gender".tr, style: theme.textTheme.labelMedium)),
          SizedBox(height: 2.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child:
                  Selector<ManageProfilePageProvider, ManageProfilePageModel?>(
                      selector: (context, provider) =>
                          provider.manageProfilePageModelObj,
                      builder: (context, manageProfilePageModelObj, child) {
                        return CustomDropDown(
                            hintText: "lbl_choose_one".tr,
                            items:
                                manageProfilePageModelObj?.dropdownItemList1 ??
                                    [],
                            onChanged: (value) {
                              context
                                  .read<ManageProfilePageProvider>()
                                  .onSelected1(value);
                            });
                      }))
        ]));
  }

  /// Section Widget
  Widget _buildPhoneNumberInput(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text("lbl_phone_number".tr,
                  style: theme.textTheme.labelMedium)),
          SizedBox(height: 2.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Selector<ManageProfilePageProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.phoneNumberController,
                      builder: (context, phoneNumberController, child) {
                        return CustomTextFormField(
                            controller: phoneNumberController);
                      }))
        ]));
  }

  /// Section Widget
  Widget _buildWeightInput(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text("lbl_weight".tr, style: theme.textTheme.labelMedium)),
          SizedBox(height: 1.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Selector<ManageProfilePageProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.kgvalueController,
                      builder: (context, kgvalueController, child) {
                        return CustomTextFormField(
                            controller: kgvalueController,
                            hintText: "lbl_kg".tr,
                            hintStyle: CustomTextStyles.bodySmallGray600,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 7.v));
                      }))
        ]));
  }

  /// Section Widget
  Widget _buildHeightInput(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text("lbl_height".tr, style: theme.textTheme.labelMedium)),
          SizedBox(height: 1.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Selector<ManageProfilePageProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.cmvalueController,
                      builder: (context, cmvalueController, child) {
                        return CustomTextFormField(
                            controller: cmvalueController,
                            hintText: "lbl_cm".tr,
                            hintStyle: CustomTextStyles.bodySmallGray600,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 7.v));
                      }))
        ]));
  }

  /// Section Widget
  Widget _buildAllergiesInput(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Text("lbl_allergies".tr, style: theme.textTheme.labelMedium)),
          SizedBox(height: 7.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Selector<ManageProfilePageProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.inputFieldController,
                      builder: (context, inputFieldController, child) {
                        return CustomTextFormField(
                            controller: inputFieldController);
                      }))
        ]));
  }

  /// Section Widget
  Widget _buildIllnessInput(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Text("lbl_illness".tr, style: theme.textTheme.labelMedium)),
          SizedBox(height: 2.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Selector<ManageProfilePageProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.inputFieldController1,
                      builder: (context, inputFieldController1, child) {
                        return CustomTextFormField(
                            controller: inputFieldController1,
                            textInputAction: TextInputAction.done);
                      }))
        ]));
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
        width: 120.h,
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 120.h, right: 120.h, bottom: 29.v),
        buttonStyle: CustomButtonStyles.none,
        decoration:
            CustomButtonStyles.gradientGreenAToSecondaryContainerDecoration,
        onPressed: () {
          onTapSaveButton(context);
        });
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapGoBackButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePageScreen,
    );
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapSaveButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePageScreen,
    );
  }
}
