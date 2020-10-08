import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:hemashealth/dashboard.dart';
import 'package:hemashealth/widgets/alert_dialog2.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';

import '../constants.dart';

class UserFeedback extends StatelessWidget {
  UserFeedback({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "Feedback",
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        backgroundColor: Color(0x44000000),
        elevation: 0,
      ),
      resizeToAvoidBottomPadding: false,
      floatingActionButton: Align(
          child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              width: 280.0,
              height: 50.0,
              child: RaisedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AlertDialog2(
                    title2: "Your Feedback Sent.",
                    press: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Dashboard();
                        }),
                      );
                    },
                  ),
                ),
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
                      'Submit',
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
          ),
          Transform.translate(
            offset: Offset(58.0, 145.0),
            child:
                // Adobe XD layer: '1' (group)
                SizedBox(
              width: 300.0,
              height: 451.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 300.0, 451.0),
                    size: Size(300.0, 451.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: '2' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(10.5, 429.0, 280.0, 32.0),
                          size: Size(300.0, 451.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Text(
                            'Please call our support line on 0720-111-222 \nfor further assistance',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: const Color(0xff898a8f),
                              height: 1.25,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 350.0, 248.8, 64.0),
                          size: Size(300.0, 451.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: '5' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(50.0, 28.0, 182, 36.0),
                                size: Size(248.8, 64.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: ToggleSwitch(
                                  initialLabelIndex: 1,
                                  minWidth: 90.0,
                                  cornerRadius: 20.0,
                                  activeBgColor: kBackgroundColor3,
                                  activeFgColor: Colors.white,
                                  inactiveBgColor: Colors.grey,
                                  inactiveFgColor: Colors.white,
                                  labels: ['YES', 'NO'],
                                  icons: [Icons.done, Icons.close],
                                  onToggle: (index) {
                                    print('switched to: $index');
                                  },
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 240.0, 19.0),
                                size: Size(248.8, 64.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Are you satisfy with our service?',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 165.0, 227.0, 168.0),
                          size: Size(300.0, 451.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: '4' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(74.0, 29.0, 153.0, 139.0),
                                size: Size(227.0, 168.0),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffededed),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(141.0, 89.0, 20.0, 20.0),
                                size: Size(227.0, 168.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'ic_add_24px' (shape)
                                    SvgPicture.string(
                                  _svg_dx4fq1,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 200.0, 19.0),
                                size: Size(227.0, 168.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text.rich(
                                  TextSpan(
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      color: const Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Add Screenshot',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '(Optional)',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 300.0, 147.0),
                          size: Size(300.0, 451.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: '3' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(2.0, 0.0, 164.0, 19.0),
                                size: Size(300.0, 147.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Enter Your Feedback',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 27.0, 300.0, 120.0),
                                size: Size(300.0, 147.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Container(
                                  child: TextField(
                                    style: TextStyle(
                                        letterSpacing: 1.0,
                                        fontSize: 16
                                    ),
                                    decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding:
                                      EdgeInsets.only(left: 11, bottom: 11, top: 11, right: 11),
                                      hintText: "Enter here",
                                    ),
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 5,
                                    cursorColor: Colors.black12,
                                    // Only numbers can be entered
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    color: const Color(0xffffffff),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xffcbcbcb)),
                                  ),
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

const String _svg_dx4fq1 =
    '<svg viewBox="152.0 314.0 20.0 20.0" ><path transform="translate(147.0, 309.0)" d="M 25.00000190734863 16.4285717010498 L 16.4285717010498 16.4285717010498 L 16.4285717010498 25.00000190734863 L 13.5714282989502 25.00000190734863 L 13.5714282989502 16.4285717010498 L 5.000000476837158 16.4285717010498 L 5.000000476837158 13.5714282989502 L 13.5714282989502 13.5714282989502 L 13.5714282989502 5.000000476837158 L 16.4285717010498 5.000000476837158 L 16.4285717010498 13.5714282989502 L 25.00000190734863 13.5714282989502 L 25.00000190734863 16.4285717010498 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
