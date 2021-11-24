// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:copybook/myWidget/GetBackButton.dart';
import 'package:copybook/myWidget/MyCheckBox.dart';
import 'package:copybook/myWidget/MySlider.dart';
import 'package:flutter/material.dart';

import '/myWidget/MyTitle.dart';
import '/myWidget/NavDrawer.dart';

class Parameter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CopyBook',
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: const Text('CopyBook'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // we use this notation to specifie hex colors in flutter in that case
              //we need to add 0XFF to ower hex color FF is for the opacity
              color: const Color(0XFF5AFFB7),
              child: ConstrainedBox(
                  constraints: new BoxConstraints(
                    minHeight: 70,
                    minWidth: double.infinity,
                  ),
                  child: Column(
                    children: [
                      //this is a built in costum widget named MyTitle
                      Row(
                        children: [
                          GetbackButton(),
                          MyTitle("Parametre", 30),
                        ],
                      ),
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("qualité image : "), MySlider()],
            ),
            Divider(color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("chemin a l'image : "),
                Flexible(
                  child: Container(
                    width: 200,
                    height: 40,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Stockage/chemin/pour/images'),
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Auto sauvgarde : "), MyCheckBox()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    print("save button pressed!");
                  },
                  child: const Text('Save'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
