import 'package:flutter/material.dart';

class AppBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/menu.png'),
          onPressed: () { },
        ),
        centerTitle: true,
        title: new Text(
          "Dashboard",
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(fontWeight: FontWeight.w500,  fontSize: 20),
        ),
        backgroundColor: Color(0x44000000),
        elevation: 0,
      ),
    );
  }
}
