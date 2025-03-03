import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/utils/routes/app_routes.dart';
import '../../../../core/utils/styles/app_images.dart';

class CompleteView extends StatefulWidget {
  const CompleteView({super.key});
  @override
  State<CompleteView> createState() => _CompleteViewState();
}

class _CompleteViewState extends State<CompleteView> {
  late Timer timer;

  @override
  initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 2), (_) {
      GoRouter.of(context).go(AppRoutes.authOptionView);
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(AppImages.animationsCompleteLottie),
      ),
    );
  }
}
