import 'package:go_router/go_router.dart';

import '../../../features/auth/presentation/views/auth_option_view.dart';
import '../../../features/auth/presentation/views/login_view.dart';
import '../../../features/auth/presentation/views/sign_up_view.dart';
import '../../../features/auth/presentation/views/verify_code_view.dart';
import '../../../features/auth/presentation/views/verify_email_view.dart';
import '../../../features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static const String authOptionView = '/authOptionView';
  static const String loginView = '/loginView';
  static const String signUpView = '/signUpView';
  static const String verifyEmailView = '/verifyEmailView';
  static const String verifyCodeView = '/verifyCodeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: authOptionView,
        builder: (context, state) => const AuthOptionView(),
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: verifyEmailView,
        builder: (context, state) => const VerifyEmailView(),
      ),
      GoRoute(
        path: verifyCodeView,
        builder: (context, state) => const VerifyCodeView(),
      ),
    ],
  );
}
