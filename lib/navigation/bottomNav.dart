import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//created once to be pulled into other pages


class MyNavBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //https://stackoverflow.com/questions/75195897/how-to-return-the-existing-current-route-from-go-router
    String currentLocation = GoRouterState
        .of(context)
        .uri
        .toString();

    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme
            .of(context)
            .primaryColor,
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
            onPressed: () => context.go('/BulletinBoard'),
            icon:
            currentLocation == '/BulletinBoard'
                ? const Icon(
              Icons.work_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.work_outline_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () => context.go('/Library'),
            icon:
            currentLocation == '/Library'
                ? const Icon(
              Icons.widgets_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.widgets_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
