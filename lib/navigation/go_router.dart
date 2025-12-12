import 'package:go_router/go_router.dart';
import '../pages/cafeteria.dart';
import '../network/overview.dart';
import '../pages/overview.dart';

final AuthService _authService = AuthService();

final GoRouter routes = GoRouter(
  /*
    initialLocation: '/splash',

    redirect: (context, state) {
      final isAuthenticated = _authService.isAuthenticated;
      final isLoading = _authService.isLoading;

      final isSplash = state.matchedLocation == '/splash';
      final isLogin = state.matchedLocation == '/login';

      print('🔍 REDIRECT: isAuth=$isAuthenticated, isLoading=$isLoading, location=${state.matchedLocation}');

      // If still loading, show splash
      if (isLoading && !isSplash) {
        print('🔍 REDIRECT: -> /splash (loading)');
        return '/splash';
      }

      // If not authenticated and not on login page, redirect to login
      if (!isAuthenticated && !isLogin && !isLoading) {
        print('🔍 REDIRECT: -> /login (not authenticated)');
        return '/login';
      }

      // If authenticated and on splash or login, redirect to home
      if (isAuthenticated && (isSplash || isLogin)) {
        print('🔍 REDIRECT: -> / (authenticated)');
        return '/';
      }

      print('🔍 REDIRECT: -> null (no redirect)');
      // No redirect needed
      return null;
    },
*/
    /// Refresh the router when auth state changes
    refreshListenable: _authService,
    routes: [
      GoRoute(path: '/',
          builder: (context, state) =>HomePage()
      ),

      GoRoute(path: '/News',
          builder: (context, state) => NewsPage()
      ),
      GoRoute(path: '/Cafeteria',
          builder: (context, state) => CafeteriaPage(),
          name: 'Cafeteria'
      ),
      GoRoute(path: '/AboutUs',
          builder: (context, state) =>AboutUsPage(),
          name: 'AboutUs'
      ),

      GoRoute(path: '/AboutApp',
          builder: (context, state) =>AboutApp(),
          name: 'AboutApp'
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const SplashScreen(),
      ),




      /*
          template for adding a route:

          GoRoute(path: '/[Page Name]',
          builder: (context, state) =>[ClassName](),
          name: '[Page Name]'
          ),

          copy/paste this block, don't include square brackets
           */
    ]
);

