import 'package:copybook/myWidget/ImageCard.dart';
import 'package:flutter/material.dart';

class MyImageGridView extends StatelessWidget {
  const MyImageGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Flexible(
      child: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(10, (index) {
          return Center(
            child: ImageCard(),
          );
        }),
      ),
    );
  }
}
