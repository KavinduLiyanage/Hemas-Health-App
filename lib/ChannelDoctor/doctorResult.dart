import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hemashealth/widgets/Mini_Drop_down_card.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';
import 'package:hemashealth/widgets/doctor_card.dart';
import 'package:hemashealth/widgets/doctor_card_white.dart';
import '../constants.dart';

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
      home: DoctorResult(),
    );
  }
}

class DoctorResult extends StatelessWidget {
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
          "Channel a Doctor",
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
            height: size.height * contentAreaHeight * 0.25,
            width: size.height * contentAreaWidth,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Container(
              child: Text(
                "Search Doctor",
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
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: GridView.count(
                        crossAxisCount: 1,
                        childAspectRatio: 8,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Expanded(
                                child: Row(children: <Widget>[
                              Expanded(
                                  child: MiniDropDownCard(
                                      hint: "Select Doctor",
                                      list: ['A', 'B', 'C', 'D'])),
                              Expanded(
                                  child: MiniDropDownCard(
                                      hint: "Select Doctor",
                                      list: ['A', 'B', 'C', 'D']))
                            ]))
                          ]),
                          Row(children: <Widget>[
                            Expanded(
                                child: Row(children: <Widget>[
                              Expanded(
                                  child: MiniDropDownCard(
                                      hint: "Select Hospital",
                                      list: ['A', 'B', 'C', 'D'])),
                              Expanded(
                                  child: MiniDropDownCard(
                                      hint: "Select Date",
                                      list: ['A', 'B', 'C', 'D']))
                            ]))
                          ])
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            //padding: EdgeInsets.all(100),
            margin: EdgeInsets.fromLTRB(
                15, 130 + size.height * contentAreaHeight * 0.25, 15, 0),
            height: size.height * contentAreaHeight * 0.73,
            width: size.height * contentAreaWidth,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Container(
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
                      padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                      child: GridView.count(
                        crossAxisCount: 1,
                        childAspectRatio: 5.20,
                        crossAxisSpacing: 10,
                        children: <Widget>[
                          DoctorCardBox(
                              svgSrc: "assets/icons/dashboard_Feedback.svg",
                              name: "Dr. Sherley Abraham",
                              hint: "General Physician"),
                          DoctorCardWhiteBox(
                              svgSrc: "assets/icons/dashboard_Feedback.svg",
                              name: "Dr. Sherley Abraham",
                              hint: "General Physician"),
                          DoctorCardBox(
                              svgSrc: "assets/icons/dashboard_Feedback.svg",
                              name: "Dr. Sherley Abraham",
                              hint: "General Physician"),
                          DoctorCardWhiteBox(
                              svgSrc: "assets/icons/dashboard_Feedback.svg",
                              name: "Dr. Sherley Abraham",
                              hint: "General Physician"),
                          DoctorCardBox(
                              svgSrc: "assets/icons/dashboard_Feedback.svg",
                              name: "Dr. Sherley Abraham",
                              hint: "General Physician"),
                          DoctorCardWhiteBox(
                              svgSrc: "assets/icons/dashboard_Feedback.svg",
                              name: "Dr. Sherley Abraham",
                              hint: "General Physician"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
