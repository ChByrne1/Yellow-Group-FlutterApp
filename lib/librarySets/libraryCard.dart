import 'package:flutter/material.dart';
import '../models/library.dart';

@override
class libraryCard extends StatelessWidget {
  final Book book;

  const libraryCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {

    return Card(
      child: ListTile(
        leading: SizedBox(
          width: 24,
          height: 24,
          child:
          Image.network(book.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(book.name),
        subtitle: Text(book.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis),
        trailing: Container(
            child: book.available ? Text(
                "Not Available"
            ) : ElevatedButton(onPressed: () {}, child: Text("Hold"))
        ),
      ),
    );
  }
}


