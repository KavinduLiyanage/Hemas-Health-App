import 'package:flutter/material.dart';
import 'constants.dart';
import 'dashboard.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: Container(
        child: Align(
            child: FloatingActionButton.extended(
              label: Text('Get Started',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Dashboard();
                  }),
                );
              },
            ),
            alignment: Alignment(0.1, 0.7)
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    kBackgroundColor1,
                    kBackgroundColor2,
                  ]),
              image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage("assets/images/Logo (1)_Crop.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
