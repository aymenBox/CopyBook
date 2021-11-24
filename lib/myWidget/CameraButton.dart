import 'package:camera/camera.dart';
import 'package:copybook/myWidget/CameraPage.dart';
import 'package:flutter/material.dart';

class CameraButton extends StatefulWidget {
  const CameraButton();

  @override
  _CameraButtonState createState() => _CameraButtonState();
}

class _CameraButtonState extends State<CameraButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: MaterialButton(
          onPressed: () async {
            await availableCameras().then((value) => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CameraPage(cameras : value))));
            print("hello");
          },
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
