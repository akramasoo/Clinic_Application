// ignore_for_file: prefer_const_constructors, unused_import

import 'package:carehealth/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'constatnt/color_app.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        return ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, child!),
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(450, name: MOBILE),
              const ResponsiveBreakpoint.resize(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: TABLET),
              const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ],
            breakpointsLandscape: [
              const ResponsiveBreakpoint.resize(560, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(812, name: MOBILE),
              const ResponsiveBreakpoint.resize(1024, name: TABLET),
              const ResponsiveBreakpoint.autoScale(1120, name: TABLET),
            ]);
      },
      debugShowCheckedModeBanner: false,
      title: 'Clinic_app',
      color: ColorApp.backgroundYallowColor,
      //
      getPages: AppPage.routes,
      initialRoute: AppPage.getBoarding_Start(),
    );
  }
}
