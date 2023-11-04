import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizer/view_model/all_bindings.dart';

import 'res/getx_localization/language.dart';
import 'res/routes/routes.dart';
import 'view/splash_screen/splash_screen.dart';

void main() async {
  await GetStorage.init();
  AllBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          initialBinding: AllBindings(),
          debugShowCheckedModeBanner: false,
          title: 'Quizer',
          translations: Language(),
          locale: Locale('en', 'US'),
          fallbackLocale: Locale('en', 'US'),
          theme: ThemeData(
              brightness: Brightness.light,
              appBarTheme: AppBarTheme(
                  centerTitle: true,
                  titleTextStyle: TextStyle(fontSize: 27.sp)),
              fontFamily: GoogleFonts.poppins().fontFamily),
          darkTheme: ThemeData(
              brightness: Brightness.dark,
              appBarTheme: AppBarTheme(
                  centerTitle: true,
                  titleTextStyle: TextStyle(fontSize: 27.sp)),
              fontFamily: GoogleFonts.poppins().fontFamily),
          getPages: AppRoutes.appRoutes(),
        );
      },
    );
  }
}
