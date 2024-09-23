import 'package:ecommerce_mobile_app/core/routes/app_Router.dart';
import 'package:ecommerce_mobile_app/core/routes/routs.dart';
import 'package:ecommerce_mobile_app/core/theme/app/darck_theme.dart';
import 'package:ecommerce_mobile_app/core/theme/app/lighte_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcommerceShopApp extends StatelessWidget {
  final AppRouter appRouter;
  const EcommerceShopApp({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecommerce shop app',
        theme: lightetheme,
        darkTheme: darcktheme,
        initialRoute: Routs.OnbordingScreen,
        onGenerateRoute: appRouter.generateRourer,
      ),
    );
  }
}
