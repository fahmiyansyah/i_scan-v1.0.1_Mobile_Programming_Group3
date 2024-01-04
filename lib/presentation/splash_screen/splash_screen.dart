import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:i_scan/core/app_export.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashProvider(), child: SplashScreen());
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.homePageScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.lightGreen100,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 54.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 189.v,
                          width: 215.h)
                    ]))));
  }
}
