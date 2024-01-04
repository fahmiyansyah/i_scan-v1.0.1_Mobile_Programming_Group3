import 'models/scan_ing_result_model.dart';
import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/widgets/app_bar/appbar_leading_image.dart';
import 'package:i_scan/widgets/app_bar/appbar_title.dart';
import 'package:i_scan/widgets/app_bar/custom_app_bar.dart';
import 'package:i_scan/widgets/custom_elevated_button.dart';
import 'package:i_scan/widgets/custom_text_form_field.dart';
import 'provider/scan_ing_result_provider.dart';

class ScanIngResultScreen extends StatefulWidget {
  const ScanIngResultScreen({Key? key}) : super(key: key);

  @override
  ScanIngResultScreenState createState() => ScanIngResultScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ScanIngResultProvider(),
        child: ScanIngResultScreen());
  }
}

class ScanIngResultScreenState extends State<ScanIngResultScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray200.withOpacity(0.93),
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTen(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.h, vertical: 16.v),
                      child: Column(children: [
                        _buildServingSizeInput(context),
                        SizedBox(height: 19.v),
                        _buildPackagingPortion(context),
                        SizedBox(height: 19.v),
                        CustomElevatedButton(
                            height: 38.v,
                            width: 143.h,
                            text: "lbl_process".tr,
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientGreenAToPrimaryDecoration,
                            buttonTextStyle: theme.textTheme.titleSmall!),
                        SizedBox(height: 19.v),
                        _buildCalculationResult(context),
                        SizedBox(height: 5.v)
                      ]))
                ])),
            bottomNavigationBar: _buildDone(context)));
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 18.v),
        decoration: AppDecoration.fillGreenA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL30),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomAppBar(
              height: 30.v,
              leadingWidth: 49.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgGoBackButton,
                  margin: EdgeInsets.only(left: 14.h)),
              title: AppbarTitle(
                  text: "lbl_scan_ing_result".tr,
                  margin: EdgeInsets.only(left: 5.h))),
          SizedBox(height: 22.v),
          Text("lbl_preview_image".tr,
              style: CustomTextStyles.bodySmallRegular),
          SizedBox(height: 5.v),
          CustomImageView(
              imagePath: ImageConstant.imgPrinter,
              height: 63.adaptSize,
              width: 63.adaptSize),
          SizedBox(height: 7.v)
        ]));
  }

  /// Section Widget
  Widget _buildServingSizeInput(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_serving_size".tr, style: CustomTextStyles.titleSmallMedium),
          SizedBox(height: 5.v),
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Selector<ScanIngResultProvider, TextEditingController?>(
                  selector: (context, provider) => provider.grvalueController,
                  builder: (context, grvalueController, child) {
                    return CustomTextFormField(
                        controller: grvalueController, hintText: "lbl_gr".tr);
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildPackagingPortion(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_packaging_size_portion".tr,
              style: CustomTextStyles.titleSmallMedium),
          SizedBox(height: 6.v),
          Selector<ScanIngResultProvider, TextEditingController?>(
              selector: (context, provider) => provider.grvalueController1,
              builder: (context, grvalueController1, child) {
                return CustomTextFormField(
                    controller: grvalueController1, hintText: "lbl_gr".tr);
              })
        ]));
  }

  /// Section Widget
  Widget _buildCalculationResult(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_calculation_result".tr,
              style: CustomTextStyles.titleSmallMedium),
          SizedBox(height: 9.v),
          Selector<ScanIngResultProvider, TextEditingController?>(
              selector: (context, provider) =>
                  provider.outputContainerController,
              builder: (context, outputContainerController, child) {
                return CustomTextFormField(
                    controller: outputContainerController,
                    textInputAction: TextInputAction.done);
              })
        ]));
  }

  /// Section Widget
  Widget _buildDone(BuildContext context) {
    return CustomElevatedButton(
        height: 40.v,
        text: "lbl_done".tr,
        margin: EdgeInsets.only(left: 39.h, right: 38.h, bottom: 28.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientGreenAToPrimaryTL10Decoration,
        buttonTextStyle: CustomTextStyles.titleMediumBlack900,
        onPressed: () {
          onTapDone(context);
        });
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapDone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
