import 'models/export_page_model.dart';
import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/widgets/app_bar/appbar_leading_image.dart';
import 'package:i_scan/widgets/app_bar/appbar_title.dart';
import 'package:i_scan/widgets/app_bar/custom_app_bar.dart';
import 'provider/export_page_provider.dart';

class ExportPageScreen extends StatefulWidget {
  const ExportPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ExportPageScreenState createState() => ExportPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExportPageProvider(),
      child: ExportPageScreen(),
    );
  }
}

class ExportPageScreenState extends State<ExportPageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildLabel(context),
              SizedBox(height: 23.v),
              _buildDocumentButton(context),
              SizedBox(height: 23.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLabel(BuildContext context) {
    return SizedBox(
      height: 203.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomAppBar(
            height: 158.v,
            leadingWidth: 49.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgGoBackButton,
              margin: EdgeInsets.only(
                left: 14.h,
                top: 18.v,
                bottom: 110.v,
              ),
            ),
            title: AppbarTitle(
              text: "lbl_export".tr,
              margin: EdgeInsets.only(
                left: 5.h,
                top: 21.v,
                bottom: 106.v,
              ),
            ),
            styleType: Style.bgFill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 32.h,
                top: 100.v,
                right: 28.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 20.v,
              ),
              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconBlack90001,
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      bottom: 38.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      bottom: 9.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_picture".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 11.v),
                        Text(
                          "msg_format_jpg_jpeg".tr,
                          style: CustomTextStyles.bodySmallRegular,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgGoBackButton,
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                    margin: EdgeInsets.only(bottom: 37.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDocumentButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconBlack90001,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              left: 14.h,
              bottom: 38.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_document".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 11.v),
                Text(
                  "lbl_format_pdf".tr,
                  style: CustomTextStyles.bodySmallRegular,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgGoBackButton,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(bottom: 37.v),
          ),
        ],
      ),
    );
  }
}
