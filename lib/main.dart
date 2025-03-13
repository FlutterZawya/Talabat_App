import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'talabat_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // this step used to set device not rotated
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then(
    (_) {
      runApp(
        DevicePreview(
          // enabled: false,
          builder: (context) => const TalabatApp(),
        ),
      );
    },
  );
}
