import 'package:doctor_app/core/helpers/shared_preference.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;

  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: AppColors.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: getInitialRoutes(),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }

  String getInitialRoutes() {
    return isShowOnBoarding()
        ? isLoggedIn()
            ? Routes.homeScreen
            : Routes.loginScreen
        : Routes.onBoardingScreen;
  }

  bool isShowOnBoarding() {
    return SharedPrefController()
        .getValue<bool>(key: PrefKeys.showOnBoarding, defaultValue: false)!;
  }

  bool isLoggedIn() {
    return SharedPrefController()
        .getValue<bool>(key: PrefKeys.loggedIn, defaultValue: false)!;
  }
}
