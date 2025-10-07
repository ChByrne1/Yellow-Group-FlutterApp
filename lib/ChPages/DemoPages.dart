import 'package:flutter/material.dart';
import 'package:yellow_group_flutterapp/Theme/theme.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "HomeScreen",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Page Number 1",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Page Number 2",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}


