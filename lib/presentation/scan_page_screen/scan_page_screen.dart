import 'models/scan_page_model.dart';
import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/widgets/app_bar/appbar_leading_image.dart';
import 'package:i_scan/widgets/app_bar/appbar_title.dart';
import 'package:i_scan/widgets/app_bar/custom_app_bar.dart';
import 'provider/scan_page_provider.dart';

class ScanPageScreen extends StatefulWidget {
  const ScanPageScreen({Key? key}) : super(key: key);

  @override
  ScanPageScreenState createState() => ScanPageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ScanPageProvider(), child: ScanPageScreen());
  }
}

class ScanPageScreenState extends State<ScanPageScreen> {
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
                child: Column(children: [
                  _buildScanIngredients1(context),
                  SizedBox(height: 18.v),
                  Padding(
                      padding: EdgeInsets.only(left: 32.h, right: 28.h),
                      child: _buildScanINGButton(context,
                          label: "lbl_scan_ing".tr,
                          descriptionText: "msg_informasi_nilai".tr,
                          onTapScanINGButton: () {
                        onTapScanINGButton(context);
                      })),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildScanIngredients1(BuildContext context) {
    return SizedBox(
        height: 212.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomAppBar(
              leadingWidth: 49.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgGoBackButton,
                  margin: EdgeInsets.only(left: 14.h, top: 18.v, bottom: 136.v),
                  onTap: () {
                    onTapGoBackButton(context);
                  }),
              title: AppbarTitle(
                  text: "lbl_scan".tr,
                  margin: EdgeInsets.only(left: 5.h, top: 18.v, bottom: 135.v)),
              styleType: Style.bgFill),
          Padding(
              padding: EdgeInsets.only(left: 32.h, right: 28.h),
              child: _buildScanINGButton(context,
                  label: "msg_scan_ingredients".tr,
                  descriptionText: "msg_it_is_a_list_of".tr,
                  onTapScanINGButton: () {
                onTapScanIngredients(context);
              }))
        ]));
  }

  /// Common widget
  Widget _buildScanINGButton(
    BuildContext context, {
    required String label,
    required String descriptionText,
    Function? onTapScanINGButton,
  }) {
    return GestureDetector(
        onTap: () {
          onTapScanINGButton!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 19.v),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconBlack90001,
                            height: 25.adaptSize,
                            width: 25.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(label,
                                style: theme.textTheme.titleMedium!
                                    .copyWith(color: appTheme.black90001))),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgGoBackButton,
                            height: 25.adaptSize,
                            width: 25.adaptSize)
                      ])),
              SizedBox(height: 8.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      width: 234.h,
                      margin: EdgeInsets.only(left: 45.h, right: 3.h),
                      child: Text(descriptionText,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallRegular
                              .copyWith(color: appTheme.black90001))))
            ])));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapGoBackButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the scanIngredientsPageScreen when the action is triggered.
  onTapScanIngredients(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.scanIngredientsPageScreen,
    );
  }

  /// Navigates to the scanIngPageScreen when the action is triggered.
  onTapScanINGButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.scanIngPageScreen,
    );
  }
}
