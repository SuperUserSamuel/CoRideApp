import 'package:flutter/material.dart';

// Let's apply light and dark theme on our app
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.grey.shade900,
      primaryColor: Colors.black,


      textTheme: TextTheme(bodyLarge: TextStyle(fontSize: 16.sp),
          bodySmall: TextStyle(fontSize: 16.sp),
          bodyMedium: TextStyle(fontSize: 16.sp),
          titleLarge: TextStyle(fontSize: 20.sp),
          labelLarge: TextStyle(fontSize: 16.sp)
      ),

      progressIndicatorTheme:  ProgressIndicatorThemeData(
          color: Colors.blue.shade100,
          circularTrackColor: const Color(0xff00B0ff),
          linearTrackColor: const Color(0xff00B0ff)
      ),
      colorScheme: const ColorScheme.dark(primary: Color(0xff00B0ff)),
      dropdownMenuTheme: const DropdownMenuThemeData(
          inputDecorationTheme: InputDecorationTheme(
              activeIndicatorBorder: BorderSide(color: Color(0xff00B0ff) )
          )
      ),
      // iconTheme: IconThemeData(color: Colors.purple.shade200),
      // primaryIconTheme: IconThemeData(color: Colors.purple.shade200),
      textButtonTheme: TextButtonThemeData(style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
            const Color(0xff00B0ff)
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
              color: Colors.white,
              fontSize: 16.sp
          ),
        ),
      )),
      outlinedButtonTheme: OutlinedButtonThemeData(style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
              color: Colors.white,
              fontSize: 16.sp
          ),
        ),
      )),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff00B0ff)),
          foregroundColor: MaterialStateProperty.all<Color>(
              Colors.white
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
                color: Colors.white,
                fontSize: 16.sp
            ),
          ),
          iconColor: MaterialStateProperty.all<Color>(
            Colors.white, ))),
      visualDensity: VisualDensity.adaptivePlatformDensity);


  static final lightTheme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,


      textTheme: TextTheme(bodyLarge: TextStyle(fontSize: 16.sp),
          bodySmall: TextStyle(fontSize: 16.sp),
          bodyMedium: TextStyle(fontSize: 16.sp),
          titleLarge: TextStyle(fontSize: 20.sp),
          labelLarge: TextStyle(fontSize: 16.sp)
      ),

      progressIndicatorTheme:  ProgressIndicatorThemeData(
          color: Colors.blue.shade100,
          circularTrackColor: const Color(0xff00B0ff),
          linearTrackColor: const Color(0xff00B0ff)
      ),
      colorScheme: const ColorScheme.light(primary: Color(0xff2DBB54)),
      dropdownMenuTheme: const DropdownMenuThemeData(
          inputDecorationTheme: InputDecorationTheme(
              activeIndicatorBorder: BorderSide(color: Color(0xff00B0ff) )
          )
      ),
      // iconTheme: const IconThemeData(color: Colors.black,),
      // primaryIconTheme: const IconThemeData(color: Colors.black,),

      textButtonTheme: TextButtonThemeData(style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
            const Color(0xff2DBB54)
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
              color: Colors.white,
              fontSize: 16.sp
          ),
        ),
      )),

      elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color(0xff2DBB54)
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
              Colors.white
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
                color: Colors.white,
                fontSize: 16.sp
            ),
          ),
          iconColor: MaterialStateProperty.all<Color>(
            Colors.black, ))),

      outlinedButtonTheme: OutlinedButtonThemeData(style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          Colors.black,

        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
              color: Colors.white,
              fontSize: 16.sp
          ),
        ),
      )),
      visualDensity: VisualDensity.adaptivePlatformDensity);

  static final cupertinoDarkTheme = MaterialBasedCupertinoThemeData(
    materialTheme: darkTheme.copyWith(
      cupertinoOverrideTheme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
    ),
  );
  static final cupertinoLightTheme =
  MaterialBasedCupertinoThemeData(materialTheme: lightTheme.copyWith(
    cupertinoOverrideTheme:  CupertinoThemeData(
      brightness: Brightness.light,
      textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(fontSize: 12.sp)
      ),
    ),
  ));
}