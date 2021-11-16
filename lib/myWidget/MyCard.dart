import 'package:copybook/folders.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Card(
        margin: const EdgeInsets.only(top: 2.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Card Title'),
              subtitle: Text('Card Text'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Button 1'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Folders()));
                    /* ... */
                  },
                ),
                const SizedBox(width: 2),
                TextButton(
                  child: const Text('Button 2'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
