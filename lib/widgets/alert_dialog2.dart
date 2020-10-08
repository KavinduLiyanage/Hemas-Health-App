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
      title: Container(
        child: Text('Successfully',
          style: TextStyle(
            color: kAlertTextColor,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        alignment: Alignment.center,
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Container(
              child: Text(title2,
                style: TextStyle(
                  color: kActiveIconColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              width: 250.0,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(0, 0,40, 25),
            width: 200.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: () {
                press();
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        kBackgroundColor1,
                        kBackgroundColor2,
                      ]),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Container(
                  constraints:
                  const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
                  // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: const Text(
                    'OK',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            )
        ),
      ],
    );
  }
}

