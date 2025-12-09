import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Theme/theme.dart';

//created once to be pulled into other pages


class YellowBottomNav extends StatelessWidget {
  const YellowBottomNav({super.key});



  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    //https://stackoverflow.com/questions/75195897/how-to-return-the-existing-current-route-from-go-router
    String currentLocation = GoRouterState
        .of(context)
        .uri
        .toString();

    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),

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
              size: 35,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () => context.go('/News'),
            icon:
            currentLocation == '/News'
                ? const Icon(
              Icons.calendar_month,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.calendar_month_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () => context.go('/Sitemap'),
            icon:
            currentLocation == '/Sitemap'
                ? const Icon(
              Icons.account_tree,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.account_tree_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),


        ],
      ),
    );
  }
}
