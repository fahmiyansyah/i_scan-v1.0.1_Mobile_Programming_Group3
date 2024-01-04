import 'models/scan_ingredients_page_model.dart';
import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/widgets/app_bar/appbar_leading_image.dart';
import 'package:i_scan/widgets/app_bar/appbar_title.dart';
import 'package:i_scan/widgets/app_bar/custom_app_bar.dart';
import 'package:i_scan/widgets/custom_elevated_button.dart';
import 'provider/scan_ingredients_page_provider.dart';

class ScanIngredientsPageScreen extends StatefulWidget {
  const ScanIngredientsPageScreen({Key? key}) : super(key: key);

  @override
  ScanIngredientsPageScreenState createState() =>
      ScanIngredientsPageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ScanIngredientsPageProvider(),
        child: ScanIngredientsPageScreen());
  }
}

class ScanIngredientsPageScreenState extends State<ScanIngredientsPageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: 310.h,
                margin: EdgeInsets.symmetric(horizontal: 25.h),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Expanded(
                      child: Container(
                          width: 310.h,
                          padding: EdgeInsets.all(15.h),
                          decoration: AppDecoration.outlineErrorContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgFlashButton,
                                    height: 39.adaptSize,
                                    width: 39.adaptSize),
                                Spacer(),
                                CustomImageView(
                                    imagePath: ImageConstant.imgTakeButton,
                                    height: 48.adaptSize,
                                    width: 48.adaptSize,
                                    alignment: Alignment.center)
                              ]))),
                  SizedBox(height: 23.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                            height: 38.v,
                            width: 143.h,
                            text: "lbl_retake".tr,
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientGreenAToPrimaryDecoration,
                            buttonTextStyle: theme.textTheme.titleSmall!),
                        CustomElevatedButton(
                            height: 38.v,
                            width: 142.h,
                            text: "lbl_next".tr,
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientGreenAToPrimaryDecoration,
                            buttonTextStyle: theme.textTheme.titleSmall!,
                            onPressed: () {
                              onTapNext(context);
                            })
                      ])
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 49.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGoBackButton,
            margin: EdgeInsets.only(left: 14.h, top: 18.v, bottom: 136.v)),
        title: AppbarTitle(
            text: "msg_scan_ingredients".tr,
            margin: EdgeInsets.only(left: 5.h, top: 20.v, bottom: 133.v)),
        styleType: Style.bgFill);
  }

  /// Navigates to the scanIngredientsResultPageScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.scanIngredientsResultPageScreen,
    );
  }
}
