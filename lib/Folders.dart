// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:copybook/myWidget/GetBackButton.dart';
import 'package:copybook/myWidget/MyImageGridView.dart';
import 'package:flutter/material.dart';

import 'myWidget/MyTitle.dart';
import 'myWidget/NavDrawer.dart';
import 'myWidget/PlusButton.dart';
import 'myWidget/CameraButton.dart';

class Folders extends StatelessWidget {
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
                          MyTitle("Folder Name", 30),
                        ],
                      ),
                    ],
                  )),
            ),
            CameraButton(),
            MyImageGridView(),
          ],
        ),
      ),
    );
  }
}
