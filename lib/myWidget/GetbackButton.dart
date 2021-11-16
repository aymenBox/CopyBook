import 'package:flutter/material.dart';

class GetbackButton extends StatelessWidget {
  const GetbackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop(context);
      },
      color: Colors.white,
      icon: const Icon(Icons.keyboard_backspace),

      // backgroundColor: Colors.green,
    );
  }
}
