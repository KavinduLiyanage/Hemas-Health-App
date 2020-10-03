import 'package:flutter/material.dart';
import '../constants.dart';
class AboutWidget extends StatelessWidget {
  final String title;
  const AboutWidget({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Successfully'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(title),
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          alignment: Alignment.center,
          child: FloatingActionButton.extended(
            label: Text('Ok'),
            icon: Icon(Icons.done),
            backgroundColor: kBackgroundColor3,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}

