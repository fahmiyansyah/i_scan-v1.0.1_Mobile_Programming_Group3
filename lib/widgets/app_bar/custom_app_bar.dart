import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 184.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 184.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgGradientnamegreenA200namegreen40000:
        return Container(
          height: 184.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.h),
            ),
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.greenA200,
                appTheme.green40000,
              ],
            ),
          ),
        );
      case Style.bgFill:
        return Container(
          height: 184.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.greenA200,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30.h),
            ),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgGradientnamegreenA200namegreen40000,
  bgFill,
}
