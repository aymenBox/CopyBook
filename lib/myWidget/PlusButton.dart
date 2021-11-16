import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      color: Colors.white,
      icon: const Icon(Icons.add_to_photos_rounded),

      // backgroundColor: Colors.green,
    );
  }
}
