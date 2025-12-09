import 'package:go_router/go_router.dart';
import 'package:yellow_group_flutterapp/pages/CafeteriaPage.dart';
import '../main.dart';
import '../pages/overview.dart';
import '../pages/news_page.dart';
final GoRouter routes =
GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/',
          builder: (context, state) =>HomePage()
      ),
      GoRoute(path: '/News',
          builder: (context, state) => NewsPage()
      ),
          GoRoute(path: '/Sitemap',
              builder: (context, state) =>SiteMap(),
              name: 'Sitemap'
          ),
     /* GoRoute(path: '/library',
          builder: (context, state) =>LibraryPage(),
            name: 'Library'
      ),*/
      GoRoute(path: '/Cafeteria',
          builder: (context, state) =>CafeteriaPage(),
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