import 'package:go_router/go_router.dart';
import 'package:music_app/presentation/Screens/Home/home_screen.dart';

class AppRouter {
  AppRouter._();
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
