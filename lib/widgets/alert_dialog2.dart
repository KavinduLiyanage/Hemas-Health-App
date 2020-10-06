import 'package:flutter/material.dart';
import '../constants.dart';
class AlertDialog2 extends StatelessWidget {
  final String title2;
  final Function press;
  const AlertDialog2({
    Key key,
    this.title2,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Successfully'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(title2),
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
              press();
            },
          ),
        ),
      ],
    );
  }
}

