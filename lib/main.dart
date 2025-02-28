import 'package:flutter/material.dart';

void main() {
  runApp(const TalabatApp());
}

class TalabatApp extends StatelessWidget {
  const TalabatApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
