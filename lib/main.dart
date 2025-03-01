import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/routes/app_routes.dart';

void main() {
  runApp(DevicePreview(
    // enabled: !kReleaseMode,
    builder: (context) => const TalabatApp(), // Wrap your app
  ));
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
