import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'talabat_app.dart';

void main() {
  runApp(
    DevicePreview(
      // enabled: false,
      builder: (context) => const TalabatApp(),
    ),
  );
}
