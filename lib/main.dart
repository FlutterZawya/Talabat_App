import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:talabat_app/talabat_app.dart';

void main() {
  runApp(DevicePreview(
    // enabled: !kReleaseMode,
    builder: (context) => const TalabatApp(), // Wrap your app
  ));
}
