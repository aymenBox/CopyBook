import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String title;
  final double sizeTitle;
  const MyTitle(this.title, this.sizeTitle);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        child: Padding(
          child: Text(
            title,
            style: TextStyle(fontSize: sizeTitle, color: Colors.white),
          ),
          padding: const EdgeInsets.all(50.0),
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
