import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 24,
      color: Color(0xffF6F6F6),
    );
  }
}
