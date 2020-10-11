import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:hemashealth/dashboard.dart';
import 'package:hemashealth/widgets/alert_dialog2.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';
import 'dart:io';
import '../constants.dart';
import 'doctorDetails.dart';

class ConfirmDoctor extends StatelessWidget {
  final File image;
  ConfirmDoctor({
    Key key,
    this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
      floatingActionButton: Align(
          child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              width: 280.0,
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog2(
                      title2: "Doctor Appointment Confirmed",
                      press: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Dashboard();
                          }),
                        );
                      },
                    ),
                  );
                  orderPlaced = 1;
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
                    constraints: const BoxConstraints(
                        minWidth: 88.0,
                        minHeight: 36.0), // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: const Text(
                      'Confirm Appointment',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              )),
          alignment: Alignment(0.25, 0.9)),
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
                "Confirm Appointment",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 80, 30, 0),
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: 5.20,
                crossAxisSpacing: 10,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: Container(
                      // padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Color(0x01EFEFEF),
                        borderRadius: BorderRadius.circular(11),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 17,
                            spreadRadius: -23,
                            color: Color(0x01EFEFEF),
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DoctorDetails();
                              }),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: <Widget>[
                                Spacer(),
                                new Container(
                                  child: new Image.asset(
                                    "assets/images/doc06.png",
                                    height: 45.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Spacer(),
                                Column(
                                  children: <Widget>[
                                    Spacer(),
                                    Text(
                                      "Dr. Sherley Abraham",
                                      textAlign: TextAlign.left,
                                      style: Theme.of(context)
                                          .textTheme
                                          .title
                                          .copyWith(fontSize: 18),
                                    ),
                                    Spacer(),
                                    Text(
                                      "General Physician",
                                      textAlign: TextAlign.left,
                                      style: Theme.of(context)
                                          .textTheme
                                          .title
                                          .copyWith(fontSize: 13),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 165, 10, 0),
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: 8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 25,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.50),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: new DropdownButton<String>(
                          hint: Text("Select Patient"),
                          dropdownColor: kBackgroundColor,
                          elevation: 5,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 32.0,
                          isExpanded: true,
                          items: [
                            "Ridmi Ekanayaka",
                            "Milinda Ranawaka",
                            "Kavindu Sandeepa"
                          ].map((value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(color: kActiveIconColor),
                              ),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(33.0, 320.0),
            child: SizedBox(
              width: 332.0,
              height: 218.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 300.0, 218.0),
                    size: Size(300.0, 218.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 300.0, 218.0),
                          size: Size(300.0, 218.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 300.0, 72.0),
                                size: Size(300.0, 218.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(2.0, 0.0, 150.0, 16.0),
                                      size: Size(300.0, 72.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Patient No',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: const Color(0xde333333),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 22.0, 300.0, 80.0),
                                      size: Size(300.0, 110.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        child: TextField(
                                          readOnly: true,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              letterSpacing: 1.0, fontSize: 16),
                                          decoration: new InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.only(
                                                left: 11,
                                                bottom: 11,
                                                top: 11,
                                                right: 11),
                                            hintText: "#7",
                                          ),
                                          keyboardType: TextInputType.multiline,
                                          maxLines: 5,
                                          cursorColor: Colors.black12,
                                          // Only numbers can be entered
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xffdededf)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 75.0, 300.0, 72.0),
                                size: Size(300.0, 218.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(2.0, 0.0, 150.0, 16.0),
                                      size: Size(300.0, 72.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Location:',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: const Color(0xde333333),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 22.0, 300.0, 80.0),
                                      size: Size(300.0, 110.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        child: TextField(
                                          readOnly: true,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              letterSpacing: 1.0, fontSize: 16),
                                          decoration: new InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.only(
                                                left: 11,
                                                bottom: 11,
                                                top: 11,
                                                right: 11),
                                            hintText: "Hemas - Thalawathugoda",
                                          ),
                                          keyboardType: TextInputType.multiline,
                                          maxLines: 5,
                                          cursorColor: Colors.black12,
                                          // Only numbers can be entered
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xffdededf)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 185.0, 300.0, 72.0),
                                size: Size(300.0, 218.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(2.0, 0.0, 150.0, 16.0),
                                      size: Size(300.0, 72.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Total Charge:',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: const Color(0xde333333),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 22.0, 300.0, 80.0),
                                      size: Size(300.0, 110.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        child: TextField(
                                          readOnly: true,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              letterSpacing: 1.0, fontSize: 16),
                                          decoration: new InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.only(
                                                left: 11,
                                                bottom: 11,
                                                top: 11,
                                                right: 11),
                                            hintText: "Rs. 1900",
                                          ),
                                          keyboardType: TextInputType.multiline,
                                          maxLines: 5,
                                          cursorColor: Colors.black12,
                                          // Only numbers can be entered
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xffdededf)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.0, 230.0, 230.0, 44.0),
                                size: Size(300.0, 218.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 200.0, 16.0),
                                      size: Size(230.0, 44.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Select Payment Method:',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: const Color(0xde333333),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(5.0, 26.0, 98.0, 18.0),
                                      size: Size(230.0, 44.0),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 198.0, 18.0),
                                            size: Size(98.0, 18.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 2.0, 16.0, 16.0),
                                                  size: Size(98.0, 18.0),
                                                  pinLeft: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  fixedWidth: true,
                                                  child: Radio(),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      20.0, -5.0, 94.0, 27.0),
                                                  size: Size(98.0, 18.0),
                                                  pinLeft: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  fixedWidth: true,
                                                  child: Text(
                                                    'Pay by Cash',
                                                    style: TextStyle(
                                                      fontFamily: 'Lato',
                                                      fontSize: 14,
                                                      color: const Color(
                                                          0xcc000000),
                                                      height:
                                                          1.7142857142857142,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          133.0, 26.0, 97.0, 18.0),
                                      size: Size(230.0, 44.0),
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                10.0, 0.0, 97.0, 18.0),
                                            size: Size(97.0, 18.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      -22.0, 2.0, 16.0, 16.0),
                                                  size: Size(97.0, 18.0),
                                                  pinLeft: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  fixedWidth: true,
                                                  child: Radio(
                                                    value: 1,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      24.0, -5.0, 100.0, 27.0),
                                                  size: Size(97.0, 18.0),
                                                  pinLeft: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  fixedWidth: true,
                                                  child: Text(
                                                    'Pay by Card',
                                                    style: TextStyle(
                                                      fontFamily: 'Lato',
                                                      fontSize: 14,
                                                      color: const Color(
                                                          0xcc000000),
                                                      height:
                                                          1.7142857142857142,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
