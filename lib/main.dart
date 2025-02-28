import 'package:flutter/material.dart';
import 'package:talabat_app/core/enum/auth_option_type.dart';
import 'package:talabat_app/core/widgets/custom_auth_option_button.dart';

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
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomAuthOptionButton(
                  onpressed: () {},
                  type: AuthOptionType.google,
                ),
                CustomAuthOptionButton(
                  onpressed: () {},
                  type: AuthOptionType.facebook,
                ),
                CustomAuthOptionButton(
                  onpressed: () {},
                  type: AuthOptionType.apple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
