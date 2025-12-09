import 'package:go_router/go_router.dart';
import 'package:yellow_group_flutterapp/pages/CafeteriaPage.dart';
import '../main.dart';
import '../pages/overview.dart';
import '../pages/news_page.dart';
import '../pages/splash_screen.dart';
import '../pages/login_page.dart';
import '../services/auth_service.dart';

/// Global instance of AuthService for use in router
final AuthService _authService = AuthService();

final GoRouter routes = GoRouter(
  initialLocation: '/splash',
  
  /// Redirect logic for authentication
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
  
  /// Refresh the router when auth state changes
  refreshListenable: _authService,
  
  routes: [
    // Splash Screen
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
      name: 'Splash',
    ),
    
    // Login Page
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
      name: 'Login',
    ),
    
    // Protected Routes (require authentication)
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      name: 'Home',
    ),
    
    GoRoute(
      path: '/News',
      builder: (context, state) => const NewsPage(),
      name: 'News',
    ),
    
    GoRoute(
      path: '/Sitemap',
      builder: (context, state) => const SiteMap(),
      name: 'Sitemap',
    ),
    
    /* GoRoute(
      path: '/library',
      builder: (context, state) => const LibraryPage(),
      name: 'Library',
    ), */
    
    GoRoute(
      path: '/Cafeteria',
      builder: (context, state) => const CafeteriaPage(),
      name: 'Cafeteria',
    ),
    
    GoRoute(
      path: '/AboutUs',
      builder: (context, state) => const AboutUs(),
      name: 'AboutUs',
    ),
    
    GoRoute(
      path: '/AboutApp',
      builder: (context, state) => const AboutApp(),
      name: 'AboutApp',
    ),

    /*
    Template for adding a route:

    GoRoute(
      path: '/[Page Name]',
      builder: (context, state) => const [ClassName](),
      name: '[Page Name]',
    ),

    Copy/paste this block, don't include square brackets
    */
  ],
);
