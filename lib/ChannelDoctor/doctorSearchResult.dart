import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hemashealth/widgets/Mini_Drop_down_card.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';
import 'package:hemashealth/widgets/doctor_card.dart';
import 'package:hemashealth/widgets/doctor_card_white.dart';
import '../constants.dart';
import 'doctorDetails.dart';

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
      home: DoctorSearchResult(),
    );
  }
}

class DoctorSearchResult extends StatelessWidget {
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
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                                      list: [
                                    'Dr. Sherley Abraham',
                                    'Dr. Turgut Alagoz',
                                    'Dr. Stacey Akersmd',
                                    'Dr. Mariam Al Hillim',
                                    'Dr. Edwin Alvarez',
                                    'Dr. Louisiana Johns'
                                  ])),
                              Expanded(
                                  child: MiniDropDownCard(
                                      hint: "Select Speciali",
                                      list: [
                                    'General Physician',
                                    'Eye Surgeon',
                                    'Dermitologist',
                                    'General Obstetrics & Gynecology',
                                    'Cardiologist',
                                    'Obstetrics & Gynecology'
                                  ]))
                            ]))
                          ]),
                          Row(children: <Widget>[
                            Expanded(
                                child: Row(children: <Widget>[
                              Expanded(
                                  child: MiniDropDownCard(
                                      hint: "Select Hospital",
                                      list: [
                                    'Hemas - Thalawathugoda',
                                    'Hemas - Wattala'
                                  ])),
                              Expanded(
                                  child: MiniDropDownCard(
                                      hint: "Select Date",
                                      list: [
                                    '01',
                                    '02',
                                    '03',
                                    '04',
                                    '05',
                                    '06',
                                    '07',
                                    '08',
                                    '09',
                                    '10',
                                    '11',
                                    '12',
                                    '13',
                                    '14',
                                    '15',
                                    '16',
                                    '17',
                                    '18',
                                    '19',
                                    '20',
                                    '21',
                                    '22',
                                    '23',
                                    '24',
                                    '25',
                                    '26',
                                    '27',
                                    '28',
                                    '29',
                                    '30',
                                    '31'
                                  ]))
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
                      padding: const EdgeInsets.fromLTRB(0, 135, 0, 0),
                      child: GridView.count(
                        crossAxisCount: 1,
                        childAspectRatio: 5.20,
                        crossAxisSpacing: 10,
                        children: <Widget>[
                          DoctorCardBox(
                            svgSrc: "assets/images/doc03.png",
                            name: "Dr. Edwin Alvarez",
                            hint: "MBBS - Cardiologist",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return DoctorDetails();
                                }),
                              );
                            },
                          ),
                          DoctorCardWhiteBox(
                            svgSrc: "assets/images/doc02.png",
                            name: "Dr. Sherley Abraham",
                            hint: "General Physician",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return DoctorDetails();
                                }),
                              );
                            },
                          ),
                          DoctorCardBox(
                            svgSrc: "assets/images/doc01.png",
                            name: "Dr. Stacey AkersMD",
                            hint: "Dermitologist",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return DoctorDetails();
                                }),
                              );
                            },
                          ),
                          DoctorCardWhiteBox(
                            svgSrc: "assets/images/doc04.png",
                            name: "Dr. Louisiana Johns",
                            hint: "Obstetrics & Gynecology",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return DoctorDetails();
                                }),
                              );
                            },
                          ),
                          DoctorCardBox(
                            svgSrc: "assets/images/doc05.png",
                            name: "Dr. Turgut Alagoz",
                            hint: "Eye Surgeon",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return DoctorDetails();
                                }),
                              );
                            },
                          ),
                          DoctorCardWhiteBox(
                            svgSrc: "assets/images/doc06.png",
                            name: "Dr. Mariam Alagoz",
                            hint: "General Obstetrics",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return DoctorDetails();
                                }),
                              );
                            },
                          ),
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
