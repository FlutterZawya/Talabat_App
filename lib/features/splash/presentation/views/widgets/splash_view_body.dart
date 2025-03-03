import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_app/core/utils/routes/app_routes.dart';
import 'package:talabat_app/core/utils/styles/app_colors.dart';
import 'package:talabat_app/core/utils/styles/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        GoRouter.of(context).pushReplacement(AppRoutes.authOptionView);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.main,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: SizedBox()),
          Image.asset(AppImages.imagesTalabat),
          Expanded(child: SizedBox()),
          SpinKitThreeInOut(
            size: 30,
            itemBuilder: (context, index) {
              final colors = [
                AppColors.grey,
                AppColors.inactiveButton,
                AppColors.white
              ];
              final color = colors[index % colors.length];
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
