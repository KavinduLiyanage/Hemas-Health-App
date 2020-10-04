import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';
import 'package:hemashealth/widgets/category_card.dart';
import 'package:hemashealth/widgets/category_card_orders_list.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hemas Health',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: Members(),
    );
  }
}

class Members extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "Lab Reports",
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        backgroundColor: Color(0x44000000),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 35% of our total height
            height: size.height * .35,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    kBackgroundColor1,
                    kBackgroundColor2,
                  ]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(26),
                bottomRight: Radius.circular(26),
              ),
            ),
          ),
          Container(
            //padding: EdgeInsets.all(100),
            margin: EdgeInsets.fromLTRB(15, 120, 15, 0),
            height: size.height * contentAreaHeight,
            width: size.height * contentAreaWidth,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Container(
              child: Text(
                "Members",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 62,
                      width: 32,
                      //child: SvgPicture.asset("assets/icons/menuIcon.svg"),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                      child: GridView.count(
                        crossAxisCount: 1,
                        childAspectRatio: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
