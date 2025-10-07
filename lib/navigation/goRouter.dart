import 'package:go_router/go_router.dart';
import '../pages/overView.dart';

final GoRouter routes =
GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/',
          builder: (context, state) =>HomePage()
      ),
      GoRoute(path: '/BulletinBoard',
          builder: (context, state) => BulletinBoardPage()
      ),
      GoRoute(path: '/library',
          builder: (context, state) =>LibraryPage()
      ),
    ]
);