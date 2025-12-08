import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


//created once to be pulled into other pages


class YellowBottomNav extends StatelessWidget {
  const YellowBottomNav({super.key});



  @override
  Widget build(BuildContext context) {
    //https://stackoverflow.com/questions/75195897/how-to-return-the-existing-current-route-from-go-router
    String currentLocation = GoRouterState
        .of(context)
        .uri
        .toString();


    /*final List<_NavPage> navPages =
        [
          _NavPage('/', Icons.home, 'Home'),
          _NavPage(route, icon, pageLabel)
        ]*/

    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),

        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () => context.go('/'),
            icon:
            currentLocation == '/'
                ? const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 50,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 50,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () => context.go('/BulletinBoard'),
            icon:
            currentLocation == '/BulletinBoard'
                ? const Icon(
              Icons.calendar_month,
              color: Colors.white,
              size: 50,
            )
                : const Icon(
              Icons.calendar_month_outlined,
              color: Colors.white,
              size: 50,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon:
            currentLocation == '/Sitemap'
                ? const Icon(
              Icons.account_tree,
              color: Colors.white,
              size: 50,
            )
                : const Icon(
              Icons.account_tree_outlined,
              color: Colors.white,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}

class _NavPage {
  final String route;
  final IconData icon;
  final String pageLabel;
  _NavPage( this.route, this.icon, this.pageLabel);
}