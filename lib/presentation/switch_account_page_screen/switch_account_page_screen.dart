import '../switch_account_page_screen/widgets/userprofilesection_item_widget.dart';
import 'models/switch_account_page_model.dart';
import 'models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:i_scan/core/app_export.dart';
import 'package:i_scan/widgets/custom_elevated_button.dart';
import 'provider/switch_account_page_provider.dart';

class SwitchAccountPageScreen extends StatefulWidget {
  const SwitchAccountPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SwitchAccountPageScreenState createState() => SwitchAccountPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SwitchAccountPageProvider(),
      child: SwitchAccountPageScreen(),
    );
  }
}

class SwitchAccountPageScreenState extends State<SwitchAccountPageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 442.v,
                  width: double.maxFinite,
                  decoration: AppDecoration.outlineBlack90001,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildBackButtonSection(context),
                      _buildProfilePageSection(context),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  decoration: AppDecoration.fillBlack,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 352.v,
                          width: 314.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(16.h),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.gray800.withOpacity(0.15),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 16.h,
                            bottom: 16.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 277.v,
                                width: 281.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 81.v),
                                        child: SizedBox(
                                          width: 280.h,
                                          child: Divider(),
                                        ),
                                      ),
                                    ),
                                    _buildUserProfileSection(context),
                                  ],
                                ),
                              ),
                              SizedBox(height: 11.v),
                              CustomElevatedButton(
                                width: 120.h,
                                text: "lbl_add_profile".tr,
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientGreenAToPrimaryDecoration,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackButtonSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 258.v),
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.fillGreenA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderBL30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGoBackButton,
              height: 30.v,
              width: 35.h,
              margin: EdgeInsets.only(bottom: 118.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                bottom: 117.v,
              ),
              child: Text(
                "lbl_profile".tr,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfilePageSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 23.h),
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 14.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup18,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 169.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 69.adaptSize,
                          width: 69.adaptSize,
                          decoration: AppDecoration.outlinePrimaryContainer,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage469x69,
                                height: 69.adaptSize,
                                width: 69.adaptSize,
                                radius: BorderRadius.circular(
                                  34.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage569x69,
                                height: 69.adaptSize,
                                width: 69.adaptSize,
                                radius: BorderRadius.circular(
                                  34.h,
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 7.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 38.v,
                                width: 90.h,
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "lbl_6289012345678".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray600_1,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "lbl_virasadha".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIcon,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 1.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text(
                                      "lbl_female".tr,
                                      style: CustomTextStyles.bodySmallGray700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSwitchAccountButton,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    margin: EdgeInsets.only(bottom: 42.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.v),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 26.h,
                  right: 22.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCalendarIcon,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                            margin: EdgeInsets.only(left: 6.h),
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "lbl_20_y_o".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMeasureIcon,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "lbl_50_kg".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 18.v,
                            width: 16.h,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "lbl_165_cm".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.v),
            Text(
              "lbl_allergies2".tr,
              style: theme.textTheme.labelMedium,
            ),
            SizedBox(height: 5.v),
            Container(
              width: 55.h,
              margin: EdgeInsets.only(left: 17.h),
              child: Text(
                "msg_peanuts_seafood_eggs".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 1.v),
            Text(
              "lbl_illness2".tr,
              style: theme.textTheme.labelMedium,
            ),
            SizedBox(height: 5.v),
            Container(
              width: 90.h,
              margin: EdgeInsets.only(left: 17.h),
              child: Text(
                "msg_asthma_celiac_disease".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
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
                        margin: EdgeInsets.only(right: 11.h),
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientGreenAToPrimaryDecoration,
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        text: "lbl_delete_profile".tr,
                        margin: EdgeInsets.only(left: 11.h),
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientGreenAToSecondaryContainerTL10Decoration,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 13.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Consumer<SwitchAccountPageProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 12.5.v),
                child: SizedBox(
                  width: 280.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray400,
                  ),
                ),
              );
            },
            itemCount: provider
                .switchAccountPageModelObj.userprofilesectionItemList.length,
            itemBuilder: (context, index) {
              UserprofilesectionItemModel model = provider
                  .switchAccountPageModelObj.userprofilesectionItemList[index];
              return UserprofilesectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
