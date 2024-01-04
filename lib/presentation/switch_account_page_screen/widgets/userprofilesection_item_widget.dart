import '../models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(
    this.userprofilesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilesectionItemModel userprofilesectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            height: 69.adaptSize,
            width: 69.adaptSize,
            decoration: AppDecoration.outlinePrimaryContainer,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: userprofilesectionItemModelObj?.virasadha,
                  height: 69.adaptSize,
                  width: 69.adaptSize,
                  radius: BorderRadius.circular(
                    34.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: userprofilesectionItemModelObj?.virasadha1,
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
            padding: EdgeInsets.only(
              left: 10.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofilesectionItemModelObj.nameLabel!,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  userprofilesectionItemModelObj.phoneLabel!,
                  style: CustomTextStyles.bodySmallGray600_1,
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: userprofilesectionItemModelObj?.genderImage,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        userprofilesectionItemModelObj.genderLabel!,
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
    );
  }
}
