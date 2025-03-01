import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/routes/app_routes.dart';

void main() {
  runApp(const TalabatApp());
}

class TalabatApp extends StatelessWidget {
  const TalabatApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
