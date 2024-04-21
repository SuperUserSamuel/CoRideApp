
import 'package:corideapp/themes.dart';

import 'package:corideapp/views/introduction/onBoarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'controller/auth_controller.dart';


void main() async {

  runApp( const MyApp() );

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    authController.decideRoute();
    final textTheme = Theme.of(context).textTheme;

    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return PlatformProvider(
              settings: PlatformSettingsData(
                iosUsesMaterialWidgets: true,
                iosUseZeroPaddingForAppbarPlatformIcon: true,
              ),
              builder: (context) => PlatformTheme(
                  // themeMode: mode.themeMode,
                  materialLightTheme: MyThemes.lightTheme,
                  materialDarkTheme: MyThemes.darkTheme,
                  cupertinoLightTheme: MyThemes.cupertinoLightTheme,
                  cupertinoDarkTheme: MyThemes.cupertinoDarkTheme,
                  matchCupertinoSystemChromeBrightness: true,

                  builder: (context) => PlatformApp(
                    debugShowCheckedModeBanner: false,
                    title: 'ImagesPro',
                    home: OnBoardingPage(),
                  )
              )
          );
        }
    );
  }

}