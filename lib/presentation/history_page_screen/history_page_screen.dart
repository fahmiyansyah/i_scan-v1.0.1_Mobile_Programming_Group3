import 'models/history_page_model.dart';
import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/widgets/app_bar/appbar_leading_image.dart';
import 'package:i_scan/widgets/app_bar/appbar_title.dart';
import 'package:i_scan/widgets/app_bar/custom_app_bar.dart';
import 'package:i_scan/widgets/custom_text_form_field.dart';
import 'provider/history_page_provider.dart';

class HistoryPageScreen extends StatefulWidget {
  const HistoryPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryPageScreenState createState() => HistoryPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HistoryPageProvider(),
      child: HistoryPageScreen(),
    );
  }
}

class HistoryPageScreenState extends State<HistoryPageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSix(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 2.v,
                ),
                child: Column(
                  children: [
                    _buildFiftySeven(context),
                    SizedBox(height: 9.v),
                    _buildFiftySix(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.v),
      decoration: AppDecoration.gradientGreenAToGreenA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppBar(
            height: 32.v,
            leadingWidth: 49.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgGoBackButton,
              margin: EdgeInsets.only(
                left: 14.h,
                bottom: 2.v,
              ),
            ),
            title: AppbarTitle(
              text: "lbl_history".tr,
              margin: EdgeInsets.only(left: 5.h),
            ),
          ),
          SizedBox(height: 21.v),
          Container(
            margin: EdgeInsets.only(
              left: 32.h,
              right: 28.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 37.h,
                    top: 21.v,
                    bottom: 29.v,
                  ),
                  child: Text(
                    "lbl_hi_virasadha".tr,
                    style: CustomTextStyles.titleLargeSemiBold,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTumblr,
                  height: 80.v,
                  width: 74.h,
                  margin: EdgeInsets.only(
                    left: 21.h,
                    top: 1.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftySeven(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_scan_ingredients".tr,
          style: CustomTextStyles.titleMediumMedium,
        ),
        SizedBox(height: 6.v),
        Selector<HistoryPageProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.keyFiveController,
          builder: (context, keyFiveController, child) {
            return CustomTextFormField(
              controller: keyFiveController,
              hintText: "msg_there_are_no_results".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFiftySix(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_scan_ing".tr,
          style: CustomTextStyles.titleMediumMedium,
        ),
        SizedBox(height: 8.v),
        Selector<HistoryPageProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.keyFiveController1,
          builder: (context, keyFiveController1, child) {
            return CustomTextFormField(
              controller: keyFiveController1,
              hintText: "msg_there_are_no_results".tr,
              textInputAction: TextInputAction.done,
            );
          },
        ),
      ],
    );
  }
}
