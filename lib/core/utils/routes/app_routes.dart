import 'package:go_router/go_router.dart';

import '../../../features/account/presentation/views/account_settings_view.dart';
import '../../../features/account/presentation/views/country_view.dart';
import '../../../features/auth/presentation/views/auth_option_view.dart';
import '../../../features/auth/presentation/views/complete_view.dart';
import '../../../features/auth/presentation/views/login_view.dart';
import '../../../features/auth/presentation/views/reset_password_view.dart';
import '../../../features/auth/presentation/views/sign_up_view.dart';
import '../../../features/auth/presentation/views/verify_code_view.dart';
import '../../../features/auth/presentation/views/verify_email_view.dart';
import '../../../features/home/presentation/views/home_view.dart';
import '../../../features/rating/presentation/views/rating_view.dart';
import '../../../features/splash/presentation/views/splash_view.dart';
import '../views/talabat_app_bottom_nav_bar.dart';

abstract class AppRoutes {
  static const String splashView = '/';
  static const String authOptionView = '/authOptionView';
  static const String loginView = '/loginView';
  static const String signUpView = '/signUpView';
  static const String verifyEmailView = '/verifyEmailView';
  static const String verifyCodeView = '/verifyCodeView';
  static const String resetPasswordView = '/resetPasswordView';
  static const String completeView = '/completeView';
  static const String talabatAppBottomNavBarView =
      '/talabatAppBottomNavBarView';
  static const String accountSettings = '/accountSettings';

  static const String homeView = '/homeView';
  static const String countryView = '/countryView';
  static const String ratingView = '/ratingView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashView,
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
      GoRoute(
        path: resetPasswordView,
        builder: (context, state) => const ResetPasswordView(),
      ),
      GoRoute(
        path: completeView,
        builder: (context, state) => const CompleteView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: talabatAppBottomNavBarView,
        builder: (context, state) => const TalabatAppBottomNavBarView(),
      ),
      GoRoute(
        path: accountSettings,
        builder: (context, state) => const AccountSettingsView(),
      ),
      GoRoute(
        path: countryView,
        builder: (context, state) => const CountryView(),
      ),
      GoRoute(
        path: ratingView,
        builder: (context, state) => const RatingView(),
      ),
    ],
  );
}
