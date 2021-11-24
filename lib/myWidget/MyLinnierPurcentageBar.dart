import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class MyLinnierPurcentageBar extends StatefulWidget {
  const MyLinnierPurcentageBar({Key? key}) : super(key: key);

  @override
  State<MyLinnierPurcentageBar> createState() => _MyLinnierPurcentageBarState();
}

class _MyLinnierPurcentageBarState extends State<MyLinnierPurcentageBar>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        //setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: LinearProgressIndicator(
        value: controller.value,
        semanticsLabel: 'Linear progress indicator',
      ),
    );
  }
}
