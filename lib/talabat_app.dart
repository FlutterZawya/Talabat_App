import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/styles/app_colors.dart';

import 'core/utils/routes/app_routes.dart';

class TalabatApp extends StatelessWidget {
  const TalabatApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
    );
  }
}
