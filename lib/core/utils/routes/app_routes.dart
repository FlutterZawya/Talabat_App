import 'package:go_router/go_router.dart';
import '../../../features/auth_option/presentation/views/auth_option_view.dart';
import '../../../features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static const String authOptionView = '/authOptionView';

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
    ],
  );
}
