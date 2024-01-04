import 'models/profile_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/widgets/app_bar/appbar_leading_image.dart';
import 'package:i_scan/widgets/app_bar/appbar_title.dart';
import 'package:i_scan/widgets/app_bar/custom_app_bar.dart';
import 'package:i_scan/widgets/custom_elevated_button.dart';
import 'package:i_scan/widgets/custom_icon_button.dart';
import 'provider/profile_page_provider.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  ProfilePageScreenState createState() => ProfilePageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfilePageProvider(), child: ProfilePageScreen());
  }
}

class ProfilePageScreenState extends State<ProfilePageScreen> {
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
                width: 314.h,
                margin: EdgeInsets.only(left: 23.h, top: 75.v, right: 23.h),
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: fs.Svg(ImageConstant.imgGroup18),
                        fit: BoxFit.cover)),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: Row(children: [
                            Container(
                                height: 69.adaptSize,
                                width: 69.adaptSize,
                                decoration:
                                    AppDecoration.outlinePrimaryContainer,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage469x69,
                                          height: 69.adaptSize,
                                          width: 69.adaptSize,
                                          radius: BorderRadius.circular(34.h),
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage569x69,
                                          height: 69.adaptSize,
                                          width: 69.adaptSize,
                                          radius: BorderRadius.circular(34.h),
                                          alignment: Alignment.center)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 10.h, top: 7.v, bottom: 7.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_virasadha".tr,
                                          style: theme.textTheme.titleMedium),
                                      Text("lbl_6289012345678".tr,
                                          style: CustomTextStyles
                                              .bodySmallGray600_1),
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgIcon,
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 1.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text("lbl_female".tr,
                                                style: CustomTextStyles
                                                    .bodySmallGray700))
                                      ])
                                    ])),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(bottom: 42.v),
                                child: CustomIconButton(
                                    height: 27.adaptSize,
                                    width: 27.adaptSize,
                                    padding: EdgeInsets.all(2.h),
                                    onTap: () {
                                      onTapBtnSwitchAccountButton(context);
                                    },
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgSwitchAccountButtonGreenA200)))
                          ])),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 26.h, right: 22.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgCalendarIcon,
                                                  height: 18.adaptSize,
                                                  width: 18.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 6.h)),
                                              SizedBox(height: 3.v),
                                              Text("lbl_20_y_o".tr,
                                                  style:
                                                      theme.textTheme.bodySmall)
                                            ])),
                                    Column(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMeasureIcon,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      SizedBox(height: 3.v),
                                      Text("lbl_50_kg".tr,
                                          style: theme.textTheme.bodySmall)
                                    ]),
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        child: Column(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgUser,
                                              height: 18.v,
                                              width: 16.h),
                                          SizedBox(height: 3.v),
                                          Text("lbl_165_cm".tr,
                                              style: theme.textTheme.bodySmall)
                                        ]))
                                  ]))),
                      SizedBox(height: 12.v),
                      Text("lbl_allergies2".tr,
                          style: theme.textTheme.labelMedium),
                      SizedBox(height: 5.v),
                      Container(
                          width: 55.h,
                          margin: EdgeInsets.only(left: 17.h),
                          child: Text("msg_peanuts_seafood_eggs".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 1.v),
                      Text("lbl_illness2".tr,
                          style: theme.textTheme.labelMedium),
                      SizedBox(height: 5.v),
                      Container(
                          width: 90.h,
                          margin: EdgeInsets.only(left: 17.h),
                          child: Text("msg_asthma_celiac_disease".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomElevatedButton(
                                            text: "lbl_manage_profile".tr,
                                            margin:
                                                EdgeInsets.only(right: 11.h),
                                            buttonStyle:
                                                CustomButtonStyles.none,
                                            decoration: CustomButtonStyles
                                                .gradientGreenAToPrimaryDecoration,
                                            onPressed: () {
                                              onTapManageProfile(context);
                                            })),
                                    Expanded(
                                        child: CustomElevatedButton(
                                            text: "lbl_delete_profile".tr,
                                            margin: EdgeInsets.only(left: 11.h),
                                            buttonStyle:
                                                CustomButtonStyles.none,
                                            decoration: CustomButtonStyles
                                                .gradientGreenAToSecondaryContainerTL10Decoration))
                                  ]))),
                      SizedBox(height: 13.v)
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
            text: "lbl_profile".tr,
            margin: EdgeInsets.only(left: 5.h, top: 18.v, bottom: 135.v)),
        styleType: Style.bgFill);
  }

  /// Navigates to the switchAccountPageScreen when the action is triggered.
  onTapBtnSwitchAccountButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.switchAccountPageScreen,
    );
  }

  /// Navigates to the manageProfilePageScreen when the action is triggered.
  onTapManageProfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.manageProfilePageScreen,
    );
  }
}
