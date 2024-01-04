import 'models/home_page_model.dart';
import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/widgets/app_bar/appbar_leading_image.dart';
import 'package:i_scan/widgets/app_bar/appbar_trailing_image.dart';
import 'package:i_scan/widgets/app_bar/custom_app_bar.dart';
import 'package:i_scan/widgets/custom_elevated_button.dart';
import 'provider/home_page_provider.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  HomePageScreenState createState() => HomePageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomePageProvider(), child: HomePageScreen());
  }
}

class HomePageScreenState extends State<HomePageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onError,
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildGreetLabel(context),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 29.v),
                        child: Column(children: [
                          SizedBox(height: 5.v),
                          _buildSeventySeven(context),
                          SizedBox(height: 36.v),
                          _buildNews(context)
                        ]))
                  ])),
            )));
  }

  /// Section Widget
  Widget _buildGreetLabel(BuildContext context) {
    return SizedBox(
        height: 208.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomAppBar(
              leadingWidth: 45.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgSettingsButton,
                  margin:
                      EdgeInsets.only(left: 20.h, top: 23.v, bottom: 136.v)),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgUserProfileButton,
                    margin: EdgeInsets.fromLTRB(21.h, 20.v, 21.h, 132.v),
                    onTap: () {
                      onTapUserProfileButton(context);
                    })
              ],
              styleType: Style.bgGradientnamegreenA200namegreen40000),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text("lbl_hai".tr,
                              style: CustomTextStyles.titleLargeMedium)),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("lbl_virasadha2".tr,
                              style: theme.textTheme.titleLarge))
                    ]),
                    SizedBox(height: 13.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 5.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: 181.h,
                                  margin:
                                      EdgeInsets.only(top: 14.v, bottom: 11.v),
                                  child: Text("msg_quickly_detect_the".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelLarge)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgTumblr,
                                  height: 80.v,
                                  width: 74.h,
                                  margin: EdgeInsets.only(left: 13.h, top: 1.v))
                            ]))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildSeventySeven(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(children: [
          GestureDetector(
              onTap: () {
                onTapScanButton(context);
              },
              child: Container(
                  margin: EdgeInsets.only(left: 1.h, right: 9.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 9.h, vertical: 15.v),
                  decoration: AppDecoration.gradientOnPrimaryContainerToGreenA
                      .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconBlack90001,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            margin: EdgeInsets.only(
                                left: 18.h, top: 9.v, bottom: 9.v)),
                        Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_scan".tr,
                                      style: theme.textTheme.titleMedium),
                                  Text("msg_capture_the_packaging".tr,
                                      style: CustomTextStyles.bodySmallRegular)
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgGoBackButton,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 9.v))
                      ]))),
          SizedBox(height: 12.v),
          Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                  onTap: () {
                    onTapExportButton(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 9.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.h, vertical: 17.v),
                      decoration: AppDecoration
                          .gradientOnPrimaryContainerToGreenA
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPlus,
                                height: 21.adaptSize,
                                width: 21.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 19.h, top: 7.v, bottom: 10.v)),
                            Spacer(flex: 53),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_export".tr,
                                      style: theme.textTheme.titleMedium),
                                  Text("msg_jpg_pdf_jpeg".tr,
                                      style: CustomTextStyles.bodySmallRegular)
                                ]),
                            Spacer(flex: 46),
                            CustomImageView(
                                imagePath: ImageConstant.imgGoBackButton,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 7.v))
                          ])))),
          SizedBox(height: 12.v),
          GestureDetector(
              onTap: () {
                onTapHistoryButton(context);
              },
              child: Container(
                  margin: EdgeInsets.only(left: 1.h, right: 9.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 9.h, vertical: 16.v),
                  decoration: AppDecoration.gradientOnPrimaryContainerToGreenA
                      .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconBlack9000125x25,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            margin: EdgeInsets.only(
                                left: 18.h, top: 4.v, bottom: 12.v)),
                        Spacer(flex: 31),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_history".tr,
                                  style: theme.textTheme.titleMedium),
                              Text("msg_find_scan_results".tr,
                                  style: CustomTextStyles.bodySmallRegular)
                            ]),
                        Spacer(flex: 68),
                        CustomImageView(
                            imagePath: ImageConstant.imgGoBackButton,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 8.v))
                      ]))),
          SizedBox(height: 12.v),
          Container(
              margin: EdgeInsets.only(left: 1.h, right: 9.h),
              padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 15.v),
              decoration: AppDecoration.gradientOnPrimaryContainerToGreenA
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgIcon25x25,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        margin: EdgeInsets.only(
                            left: 18.h, top: 8.v, bottom: 10.v)),
                    Spacer(flex: 43),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_about".tr,
                              style: theme.textTheme.titleMedium),
                          Text("msg_about_the_application".tr,
                              style: CustomTextStyles.bodySmallRegular)
                        ]),
                    Spacer(flex: 56),
                    CustomImageView(
                        imagePath: ImageConstant.imgGoBackButton,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 9.v))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildNews(BuildContext context) {
    return SizedBox(
        height: 157.v,
        width: 308.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(top: 14.v, right: 8.h),
                  padding: EdgeInsets.symmetric(vertical: 16.v),
                  decoration: AppDecoration.outlineBlack900011.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgNewSImage,
                            height: 109.v,
                            width: 111.h,
                            radius: BorderRadius.circular(10.h),
                            margin: EdgeInsets.only(top: 2.v)),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 6.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: 134.h,
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_do_you_know_the2".tr,
                                                style: CustomTextStyles
                                                    .labelLargeSemiBold),
                                            TextSpan(
                                                text: "lbl_instant_noodles".tr,
                                                style: CustomTextStyles
                                                    .labelLargeRed300),
                                            TextSpan(
                                                text: "lbl".tr,
                                                style: CustomTextStyles
                                                    .labelLargeSemiBold)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  SizedBox(height: 4.v),
                                  SizedBox(
                                      width: 148.h,
                                      child: Text("msg_there_is_msg_which".tr,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style:
                                              CustomTextStyles.bodySmallRoboto))
                                ]))
                      ]))),
          CustomElevatedButton(
              width: 120.h,
              text: "msg_interesting_facts".tr,
              buttonStyle: CustomButtonStyles.fillRed,
              buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer,
              alignment: Alignment.topRight)
        ]));
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapUserProfileButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePageScreen,
    );
  }

  /// Navigates to the scanPageScreen when the action is triggered.
  onTapScanButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.scanPageScreen,
    );
  }

  /// Navigates to the exportPageScreen when the action is triggered.
  onTapExportButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exportPageScreen,
    );
  }

  /// Navigates to the historyPageScreen when the action is triggered.
  onTapHistoryButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.historyPageScreen,
    );
  }
}
