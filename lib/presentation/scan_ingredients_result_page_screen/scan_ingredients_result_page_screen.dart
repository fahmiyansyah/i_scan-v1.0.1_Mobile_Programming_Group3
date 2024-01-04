import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/widgets/app_bar/appbar_leading_image.dart';
import 'package:i_scan/widgets/app_bar/appbar_title.dart';
import 'package:i_scan/widgets/app_bar/custom_app_bar.dart';
import 'package:i_scan/widgets/custom_elevated_button.dart';
import 'package:i_scan/widgets/custom_text_form_field.dart';
import 'provider/scan_ingredients_result_page_provider.dart';

class ScanIngredientsResultPageScreen extends StatefulWidget {
  final String scannedResult;

  const ScanIngredientsResultPageScreen({
    Key? key,
    required this.scannedResult,
  }) : super(key: key);

  @override
  ScanIngredientsResultPageScreenState createState() =>
      ScanIngredientsResultPageScreenState();

  static Widget builder(BuildContext context, String scannedResult) {
    return ChangeNotifierProvider(
      create: (context) => ScanIngredientsResultPageProvider(),
      child: ScanIngredientsResultPageScreen(scannedResult: scannedResult),
    );
  }
}

class ScanIngredientsResultPageScreenState
    extends State<ScanIngredientsResultPageScreen> {
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
          child: Column(
            children: [
              _buildEight(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 15.v),
                child: Column(
                  children: [
                    _buildResultOutput(context),
                    SizedBox(height: 18.v),
                    _buildWarningOutput(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildDone(context),
      ),
    );
  }

  Widget _buildEight(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.v),
      decoration: AppDecoration.fillGreenA
          .copyWith(borderRadius: BorderRadiusStyle.customBorderBL30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            height: 32.v,
            leadingWidth: 49.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgGoBackButton,
              margin: EdgeInsets.only(left: 14.h, bottom: 2.v),
            ),
            centerTitle: true,
            title: AppbarTitle(text: "msg_scan_ingredients2".tr),
          ),
          SizedBox(height: 20.v),
          Text("lbl_preview_image".tr,
              style: CustomTextStyles.bodySmallRegular),
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: ImageConstant.imgPrinter,
            height: 63.adaptSize,
            width: 63.adaptSize,
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  Widget _buildResultOutput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_scanner_s_result".tr,
          style: CustomTextStyles.titleSmallMedium,
        ),
        SizedBox(height: 9.v),
        Selector<ScanIngredientsResultPageProvider, TextEditingController?>(
          selector: (context, provider) =>
              context.watch<ScanIngredientsResultPageProvider>().containerController,
          builder: (context, containerController, child) {
            containerController?.text = widget.scannedResult;
            return CustomTextFormField(
              controller: containerController,
            );
          },
        ),
      ],
    );
  }

  Widget _buildWarningOutput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_warning".tr,
          style: CustomTextStyles.titleSmallMedium,
        ),
        SizedBox(height: 8.v),
        Selector<ScanIngredientsResultPageProvider, TextEditingController?>(
          selector: (context, provider) =>
              context.watch<ScanIngredientsResultPageProvider>().containerController1,
          builder: (context, containerController1, child) {
            return CustomTextFormField(
              controller: containerController1,
              textInputAction: TextInputAction.done,
            );
          },
        ),
      ],
    );
  }

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
      },
    );
  }

  onTapDone(BuildContext context) {
    // Implement your onTapDone logic
  }
}
