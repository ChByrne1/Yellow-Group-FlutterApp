import 'package:go_router/go_router.dart';
import 'package:yellow_group_flutterapp/pages/AboutApp.dart';
import 'package:yellow_group_flutterapp/pages/AboutUs.dart';
import 'package:yellow_group_flutterapp/pages/Cafeteria.dart';
import 'package:yellow_group_flutterapp/pages/Sitemap.dart';
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
          builder: (context, state) =>LibraryPage(),
            name: 'Library'
      ),
        GoRoute(path: '/Sitemap',
        builder: (context, state) =>SiteMap(),
        name: 'Sitemap'
      ),
      GoRoute(path: '/Cafeteria',
          builder: (context, state) =>Cafeteria(),
          name: 'Cafeteria'
      ),
      GoRoute(path: '/AboutUs',
          builder: (context, state) =>AboutUs(),
          name: 'AboutUs'
      ),
      GoRoute(path: '/AboutApp',
          builder: (context, state) =>AboutApp(),
          name: 'AboutApp'
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