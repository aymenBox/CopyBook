import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  const CameraButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: MaterialButton(
          onPressed: () {},
          color: Colors.blue,
          textColor: Colors.white,
          child: Icon(
            Icons.camera_alt,
            size: 24,
          ),
          padding: EdgeInsets.all(16),
          shape: CircleBorder(),
        ));
  }
}
