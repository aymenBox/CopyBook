import 'dart:io';
import 'dart:typed_data';

import 'package:copybook/model/photo.dart';
import 'package:copybook/utilitiyClasses/dbHelper.dart';
import 'package:copybook/utilitiyClasses/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class CameraButton extends StatefulWidget {
  const CameraButton();

  @override
  _CameraButtonState createState() => _CameraButtonState();
}

class _CameraButtonState extends State<CameraButton> {
  //this variable File? image store the image temp path
  File? image;
  DBHelper? dbhelper;
  //this async Future function will be trigerred if we preess on the camera button
  //wich will call for the ImagePicker().pickImage() from the imagePicker package
  //then if it work it will return an image else it will return a null
  //we can specifiy wich source will give us the image in
  //source: ImageSource.camera or ImageSource.gallery
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("image non capturé"),
        ));
        return;
      }
      //we use the await keywork to slove the readAsBytes()
      String imageString = Utility.base64String(await image.readAsBytes());
      print(imageString);
      //create a photo object
      Photo photo = Photo(0, imageString, "mat");
      print("saving image?");
      dbhelper?.save(photo);
      final imageTemp = File(image.path);
      this.image = imageTemp;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("image caputré"),
      ));
    } on PlatformException catch (e) {
      print("falid to pick image $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: MaterialButton(
          onPressed: () async {
            /* await availableCameras().then((value) => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CameraPage(cameras : value))));
            print("hello");*/
            print("before image picker");
            pickImage();
            print("after image picker");
            print("dbhelber value $dbhelper");
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
