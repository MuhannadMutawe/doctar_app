import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/shared_preference.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await SharedPrefController().init();
  setUpGitIt();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
