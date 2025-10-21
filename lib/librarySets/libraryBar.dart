
import 'package:flutter/material.dart';

import '../Theme/theme.dart';

class LibraryBar extends StatelessWidget {
  const LibraryBar({super.key});

  @override

  Widget build(BuildContext context)
  {
    final pageSetup = SchoolTheme();
    final test = Theme.of(context);


    return Container(
      color: test.colorScheme.onPrimary,
        child:Row(
        children: [
        ElevatedButton(
        onPressed: () {},
    child: Text('New Books'),
    ), SizedBox(width: 8),
  ElevatedButton(
    onPressed: () {},
  child: Text('Text Books'),
    ),
    SizedBox(width: 8),
    IconButton(onPressed: () {},
    icon: Icon(Icons.filter_list),
    )
    ]
        )
    );
  }

}