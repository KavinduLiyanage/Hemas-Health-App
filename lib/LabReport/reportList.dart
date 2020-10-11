import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hemashealth/LabReport/reportUpdate.dart';
import 'package:hemashealth/LabReport/reportView.dart';
import 'package:hemashealth/widgets/alert_dialog.dart';
import 'package:hemashealth/widgets/alert_dialog2.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';

import '../constants.dart';
import 'membersNew.dart';

class ReportList extends StatelessWidget {

  final String memberName;
  ReportList({
    Key key,
    this.memberName
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(
      //backgroundColor: const Color(0xffffffff),
      bottomNavigationBar: BottomNavBar(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "Lab Reports",
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(fontWeight: FontWeight.w500,  fontSize: 20),
        ),
        backgroundColor: Color(0x44000000),
        elevation: 0,
      ),
      floatingActionButton: Align(
          child: Container(
              margin: EdgeInsets.fromLTRB(0, 0,0, 10),
              width: 280.0,
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReportUpdate()),
                  );
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                padding: const EdgeInsets.all(0.0),
                child: Ink(

                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          kBackgroundColor1,
                          kBackgroundColor2,
                        ]
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: Container(
                    constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: const Text(
                      'Update Report',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontSize: 16),

                    ),
                  ),
                ),
              )
          ),
          alignment: Alignment(0.25, 0.9)
      ),
      resizeToAvoidBottomPadding: false,
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
                  ]
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(26),
                bottomRight: Radius.circular(26),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 125.0),
            child: SizedBox(
              width: 376.0,
              height: 602.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 602.0),
                    size: Size(376.0, 602.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 32.0, 376.0, 570.0),
                          size: Size(376.0, 602.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 9),
                                  blurRadius: 38,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(146.0, 0.0, 85.0, 85.0),
                          size: Size(376.0, 602.0),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/profile4.jpg'),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(
                                  width: 4.0, color: const Color(0xffffffff)),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(52.0, 95.8, 300.0, 28.0),
                          size: Size(376.0, 602.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Text(
                            memberName+' - Reports',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: const Color(0xff3f4079),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.0, 230.0, 335.0, 70.0),
                    size: Size(376.0, 602.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 335.0, 70.0),
                          size: Size(335.0, 70.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 335.0, 70.0),
                                size: Size(335.0, 70.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Rectangle' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: const Color(0xffe7e7e7),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 20.2, 288.0, 30.0),
                                size: Size(335.0, 70.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 14.0, 200.0, 18.0),
                                      size: Size(288.0, 30.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Cholesterol',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          color: const Color(0xff000000),
                                          letterSpacing: -0.224,
                                          fontWeight: FontWeight.w700,
                                          height: 0.5714285714285714,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          138.0, 0.0, 150.0, 30.0),
                                      size: Size(288.0, 30.0),
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 150.0, 30.0),
                                            size: Size(150.0, 30.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                new GestureDetector(
                                                  onTap: () => showDialog(
                                                    context: context,
                                                    builder: (context) => AboutWidget(
                                                      title: "Cholesterol Report Downloaded.",
                                                    ),
                                                  ),
                                                    child: Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          55.0, 0.0, 40.0, 30.0),
                                                      size: Size(150.0, 30.0),
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      fixedWidth: true,
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Pinned.fromSize(
                                                            bounds: Rect.fromLTWH(
                                                                0.0,
                                                                0.0,
                                                                40.0,
                                                                30.0),
                                                            size: Size(40.0, 30.0),
                                                            pinLeft: true,
                                                            pinRight: true,
                                                            pinTop: true,
                                                            pinBottom: true,
                                                            child: Stack(
                                                              children: <Widget>[
                                                                Pinned.fromSize(
                                                                  bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      40.0,
                                                                      30.0),
                                                                  size: Size(
                                                                      40.0, 30.0),
                                                                  pinLeft: true,
                                                                  pinRight: true,
                                                                  pinTop: true,
                                                                  pinBottom: true,
                                                                  child: Stack(
                                                                    children: <
                                                                        Widget>[
                                                                      Pinned
                                                                          .fromSize(
                                                                        bounds: Rect
                                                                            .fromLTWH(
                                                                            0.0,
                                                                            0.0,
                                                                            40.0,
                                                                            30.0),
                                                                        size: Size(
                                                                            40.0,
                                                                            30.0),
                                                                        pinLeft:
                                                                        true,
                                                                        pinRight:
                                                                        true,
                                                                        pinTop:
                                                                        true,
                                                                        pinBottom:
                                                                        true,
                                                                        child: SvgPicture
                                                                            .string(
                                                                          _svg_s6o8ld,
                                                                          allowDrawingOutsideViewBox:
                                                                          true,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ),
                                                                      Pinned
                                                                          .fromSize(
                                                                        bounds: Rect
                                                                            .fromLTWH(
                                                                            13.0,
                                                                            6.8,
                                                                            15.0,
                                                                            16.0),
                                                                        size: Size(
                                                                            40.0,
                                                                            30.0),
                                                                        pinTop:
                                                                        true,
                                                                        pinBottom:
                                                                        true,
                                                                        fixedWidth:
                                                                        true,
                                                                        child:
                                                                        // Adobe XD layer: 'download' (shape)
                                                                        SvgPicture
                                                                            .string(
                                                                          _svg_6mghew,
                                                                          allowDrawingOutsideViewBox:
                                                                          true,
                                                                          fit: BoxFit
                                                                              .fill,
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
                                                new GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(
                                                            builder: (context) {
                                                              return ReportView();
                                                            }));
                                                  },
                                                    child: Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          0.0, 0.0, 40.0, 30.0),
                                                      size: Size(150.0, 30.0),
                                                      pinLeft: true,
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      fixedWidth: true,
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Pinned.fromSize(
                                                            bounds: Rect.fromLTWH(
                                                                0.0,
                                                                0.0,
                                                                40.0,
                                                                30.0),
                                                            size: Size(40.0, 30.0),
                                                            pinLeft: true,
                                                            pinRight: true,
                                                            pinTop: true,
                                                            pinBottom: true,
                                                            child: Stack(
                                                              children: <Widget>[
                                                                Pinned.fromSize(
                                                                  bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      40.0,
                                                                      30.0),
                                                                  size: Size(
                                                                      40.0, 30.0),
                                                                  pinLeft: true,
                                                                  pinRight: true,
                                                                  pinTop: true,
                                                                  pinBottom: true,
                                                                  child: Stack(
                                                                    children: <
                                                                        Widget>[
                                                                      Pinned
                                                                          .fromSize(
                                                                        bounds: Rect
                                                                            .fromLTWH(
                                                                            0.0,
                                                                            0.0,
                                                                            40.0,
                                                                            30.0),
                                                                        size: Size(
                                                                            40.0,
                                                                            30.0),
                                                                        pinLeft:
                                                                        true,
                                                                        pinRight:
                                                                        true,
                                                                        pinTop:
                                                                        true,
                                                                        pinBottom:
                                                                        true,
                                                                        child: SvgPicture
                                                                            .string(
                                                                          _svg_1b5z0f,
                                                                          allowDrawingOutsideViewBox:
                                                                          true,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ),
                                                                      Pinned
                                                                          .fromSize(
                                                                        bounds: Rect
                                                                            .fromLTWH(
                                                                            12.0,
                                                                            8.0,
                                                                            17.0,
                                                                            13.2),
                                                                        size: Size(
                                                                            40.0,
                                                                            30.0),
                                                                        fixedWidth:
                                                                        true,
                                                                        fixedHeight:
                                                                        true,
                                                                        child:
                                                                        // Adobe XD layer: 'ic_reorder_24px' (shape)
                                                                        SvgPicture
                                                                            .string(
                                                                          _svg_nlnfvy,
                                                                          allowDrawingOutsideViewBox:
                                                                          true,
                                                                          fit: BoxFit
                                                                              .fill,
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
                                                new GestureDetector(
                                                  onTap: () => showDialog(
                                                    context: context,
                                                    builder: (context) => AboutWidget(
                                                      title: "Cholesterol Report Deleted.",
                                                    ),
                                                  ),
                                                    child: Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          110.0, 0.0, 40.0, 30.0),
                                                      size: Size(150.0, 30.0),
                                                      pinRight: true,
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      fixedWidth: true,
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Pinned.fromSize(
                                                            bounds: Rect.fromLTWH(
                                                                0.0,
                                                                0.0,
                                                                40.0,
                                                                30.0),
                                                            size: Size(40.0, 30.0),
                                                            pinLeft: true,
                                                            pinRight: true,
                                                            pinTop: true,
                                                            pinBottom: true,
                                                            child:
                                                            SvgPicture.string(
                                                              _svg_x5hvc3,
                                                              allowDrawingOutsideViewBox:
                                                              true,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                          Pinned.fromSize(
                                                            bounds: Rect.fromLTWH(
                                                                13.0,
                                                                8.0,
                                                                14.0,
                                                                14.0),
                                                            size: Size(40.0, 30.0),
                                                            fixedWidth: true,
                                                            fixedHeight: true,
                                                            child:
                                                            // Adobe XD layer: 'ic_clear_24px' (shape)
                                                            SvgPicture.string(
                                                              _svg_al7aid,
                                                              allowDrawingOutsideViewBox:
                                                              true,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ],
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.0, 320.0, 335.0, 70.0),
                    size: Size(376.0, 602.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 335.0, 70.0),
                          size: Size(335.0, 70.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 335.0, 70.0),
                                size: Size(335.0, 70.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Rectangle' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: const Color(0xffe7e7e7),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(19.0, 20.2, 289.0, 30.0),
                                size: Size(335.0, 70.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 14.0, 200.0, 18.0),
                                      size: Size(289.0, 30.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Haemoglobin',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          color: const Color(0xff000000),
                                          letterSpacing: -0.224,
                                          fontWeight: FontWeight.w700,
                                          height: 0.5714285714285714,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          139.0, 0.0, 150.0, 30.0),
                                      size: Size(289.0, 30.0),
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 150.0, 30.0),
                                            size: Size(150.0, 30.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                new GestureDetector(
                                                  onTap: () => showDialog(
                                                    context: context,
                                                    builder: (context) => AboutWidget(
                                                      title: "Haemoglobin Report Downloaded.",
                                                    ),
                                                  ),
                                                    child: Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          55.0, 0.0, 40.0, 30.0),
                                                      size: Size(150.0, 30.0),
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      fixedWidth: true,
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Pinned.fromSize(
                                                            bounds: Rect.fromLTWH(
                                                                0.0,
                                                                0.0,
                                                                40.0,
                                                                30.0),
                                                            size: Size(40.0, 30.0),
                                                            pinLeft: true,
                                                            pinRight: true,
                                                            pinTop: true,
                                                            pinBottom: true,
                                                            child: Stack(
                                                              children: <Widget>[
                                                                Pinned.fromSize(
                                                                  bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      40.0,
                                                                      30.0),
                                                                  size: Size(
                                                                      40.0, 30.0),
                                                                  pinLeft: true,
                                                                  pinRight: true,
                                                                  pinTop: true,
                                                                  pinBottom: true,
                                                                  child: Stack(
                                                                    children: <
                                                                        Widget>[
                                                                      Pinned
                                                                          .fromSize(
                                                                        bounds: Rect
                                                                            .fromLTWH(
                                                                            0.0,
                                                                            0.0,
                                                                            40.0,
                                                                            30.0),
                                                                        size: Size(
                                                                            40.0,
                                                                            30.0),
                                                                        pinLeft:
                                                                        true,
                                                                        pinRight:
                                                                        true,
                                                                        pinTop:
                                                                        true,
                                                                        pinBottom:
                                                                        true,
                                                                        child: SvgPicture
                                                                            .string(
                                                                          _svg_s6o8ld,
                                                                          allowDrawingOutsideViewBox:
                                                                          true,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ),
                                                                      Pinned
                                                                          .fromSize(
                                                                        bounds: Rect
                                                                            .fromLTWH(
                                                                            13.0,
                                                                            6.8,
                                                                            15.0,
                                                                            16.0),
                                                                        size: Size(
                                                                            40.0,
                                                                            30.0),
                                                                        pinTop:
                                                                        true,
                                                                        pinBottom:
                                                                        true,
                                                                        fixedWidth:
                                                                        true,
                                                                        child:
                                                                        // Adobe XD layer: 'download' (shape)
                                                                        SvgPicture
                                                                            .string(
                                                                          _svg_rnzwjt,
                                                                          allowDrawingOutsideViewBox:
                                                                          true,
                                                                          fit: BoxFit
                                                                              .fill,
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
                                                new GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(
                                                            builder: (context) {
                                                      return ReportView();
                                                    }));
                                                  },
                                                  child: Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          0.0, 0.0, 40.0, 30.0),
                                                      size: Size(150.0, 30.0),
                                                      pinLeft: true,
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      fixedWidth: true,
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Pinned.fromSize(
                                                            bounds: Rect.fromLTWH(
                                                                0.0,
                                                                0.0,
                                                                40.0,
                                                                30.0),
                                                            size: Size(40.0, 30.0),
                                                            pinLeft: true,
                                                            pinRight: true,
                                                            pinTop: true,
                                                            pinBottom: true,
                                                            child: Stack(
                                                              children: <Widget>[
                                                                Pinned.fromSize(
                                                                  bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      40.0,
                                                                      30.0),
                                                                  size: Size(
                                                                      40.0, 30.0),
                                                                  pinLeft: true,
                                                                  pinRight: true,
                                                                  pinTop: true,
                                                                  pinBottom: true,
                                                                  child: Stack(
                                                                    children: <
                                                                        Widget>[
                                                                      Pinned
                                                                          .fromSize(
                                                                        bounds: Rect
                                                                            .fromLTWH(
                                                                            0.0,
                                                                            0.0,
                                                                            40.0,
                                                                            30.0),
                                                                        size: Size(
                                                                            40.0,
                                                                            30.0),
                                                                        pinLeft:
                                                                        true,
                                                                        pinRight:
                                                                        true,
                                                                        pinTop:
                                                                        true,
                                                                        pinBottom:
                                                                        true,
                                                                        child: SvgPicture
                                                                            .string(
                                                                          _svg_1b5z0f,
                                                                          allowDrawingOutsideViewBox:
                                                                          true,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ),
                                                                      Pinned
                                                                          .fromSize(
                                                                        bounds: Rect
                                                                            .fromLTWH(
                                                                            12.0,
                                                                            8.0,
                                                                            17.0,
                                                                            13.2),
                                                                        size: Size(
                                                                            40.0,
                                                                            30.0),
                                                                        fixedWidth:
                                                                        true,
                                                                        fixedHeight:
                                                                        true,
                                                                        child:
                                                                        // Adobe XD layer: 'ic_reorder_24px' (shape)
                                                                        SvgPicture
                                                                            .string(
                                                                          _svg_nlnfvy,
                                                                          allowDrawingOutsideViewBox:
                                                                          true,
                                                                          fit: BoxFit
                                                                              .fill,
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
                                                new GestureDetector(
                                                  onTap: () => showDialog(
                                                    context: context,
                                                    builder: (context) => AlertDialog2(
                                                      title2: "Haemoglobin Report Deleted.",
                                                      press: () {
                                                        Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(builder: (context) {
                                                            return MembersNew();
                                                          }),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                    child: Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          110.0, 0.0, 40.0, 30.0),
                                                      size: Size(150.0, 30.0),
                                                      pinRight: true,
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      fixedWidth: true,
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Pinned.fromSize(
                                                            bounds: Rect.fromLTWH(
                                                                0.0,
                                                                0.0,
                                                                40.0,
                                                                30.0),
                                                            size: Size(40.0, 30.0),
                                                            pinLeft: true,
                                                            pinRight: true,
                                                            pinTop: true,
                                                            pinBottom: true,
                                                            child:
                                                            SvgPicture.string(
                                                              _svg_x5hvc3,
                                                              allowDrawingOutsideViewBox:
                                                              true,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                          Pinned.fromSize(
                                                            bounds: Rect.fromLTWH(
                                                                13.0,
                                                                8.0,
                                                                14.0,
                                                                14.0),
                                                            size: Size(40.0, 30.0),
                                                            fixedWidth: true,
                                                            fixedHeight: true,
                                                            child:
                                                            // Adobe XD layer: 'ic_clear_24px' (shape)
                                                            SvgPicture.string(
                                                              _svg_al7aid,
                                                              allowDrawingOutsideViewBox:
                                                              true,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ],
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.0, 140.0, 335.0, 70.0),
                    size: Size(376.0, 602.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 335.0, 70.0),
                          size: Size(335.0, 70.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Rectangle' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color(0xffe7e7e7),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(18.0, 20.0, 291.0, 30.0),
                          size: Size(335.0, 70.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 14.0, 200.0, 18.0),
                                size: Size(291.0, 30.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Fasting Blood Sugars',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    color: const Color(0xff000000),
                                    letterSpacing: -0.224,
                                    fontWeight: FontWeight.w700,
                                    height: 0.5714285714285714,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(141.0, 0.0, 150.0, 30.0),
                                size: Size(291.0, 30.0),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 150.0, 30.0),
                                      size: Size(150.0, 30.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          new GestureDetector(
                                            onTap: () => showDialog(
                                              context: context,
                                              builder: (context) => AboutWidget(
                                                title:
                                                    "Blood Sugar Report Downloaded.",
                                              ),
                                            ),
                                            child: Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  55.0, 0.0, 40.0, 30.0),
                                              size: Size(150.0, 30.0),
                                              pinTop: true,
                                              pinBottom: true,
                                              fixedWidth: true,
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 0.0, 40.0, 30.0),
                                                    size: Size(40.0, 30.0),
                                                    pinLeft: true,
                                                    pinRight: true,
                                                    pinTop: true,
                                                    pinBottom: true,
                                                    child: Stack(
                                                      children: <Widget>[
                                                        Pinned.fromSize(
                                                          bounds: Rect.fromLTWH(
                                                              0.0,
                                                              0.0,
                                                              40.0,
                                                              30.0),
                                                          size:
                                                              Size(40.0, 30.0),
                                                          pinLeft: true,
                                                          pinRight: true,
                                                          pinTop: true,
                                                          pinBottom: true,
                                                          child: Stack(
                                                            children: <Widget>[
                                                              Pinned.fromSize(
                                                                bounds: Rect
                                                                    .fromLTWH(
                                                                        0.0,
                                                                        0.0,
                                                                        40.0,
                                                                        30.0),
                                                                size: Size(
                                                                    40.0, 30.0),
                                                                pinLeft: true,
                                                                pinRight: true,
                                                                pinTop: true,
                                                                pinBottom: true,
                                                                child:
                                                                    SvgPicture
                                                                        .string(
                                                                  _svg_t8dat,
                                                                  allowDrawingOutsideViewBox:
                                                                      true,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                              Pinned.fromSize(
                                                                bounds: Rect
                                                                    .fromLTWH(
                                                                        13.0,
                                                                        7.0,
                                                                        15.0,
                                                                        16.0),
                                                                size: Size(
                                                                    40.0, 30.0),
                                                                pinTop: true,
                                                                pinBottom: true,
                                                                fixedWidth:
                                                                    true,
                                                                child:
                                                                    // Adobe XD layer: 'download' (shape)
                                                                    SvgPicture
                                                                        .string(
                                                                  _svg_tszs6b,
                                                                  allowDrawingOutsideViewBox:
                                                                      true,
                                                                  fit: BoxFit
                                                                      .fill,
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
                                          new GestureDetector(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return ReportView();
                                              }));
                                            },
                                            child: Pinned.fromSize(
                                                bounds: Rect.fromLTWH(
                                                    0.0, 0.0, 40.0, 30.0),
                                                size: Size(150.0, 30.0),
                                                pinLeft: true,
                                                pinTop: true,
                                                pinBottom: true,
                                                fixedWidth: true,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          0.0, 0.0, 40.0, 30.0),
                                                      size: Size(40.0, 30.0),
                                                      pinLeft: true,
                                                      pinRight: true,
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Pinned.fromSize(
                                                            bounds: Rect.fromLTWH(
                                                                0.0,
                                                                0.0,
                                                                40.0,
                                                                30.0),
                                                            size: Size(40.0, 30.0),
                                                            pinLeft: true,
                                                            pinRight: true,
                                                            pinTop: true,
                                                            pinBottom: true,
                                                            child: Stack(
                                                              children: <Widget>[
                                                                Pinned.fromSize(
                                                                  bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      40.0,
                                                                      30.0),
                                                                  size: Size(
                                                                      40.0, 30.0),
                                                                  pinLeft: true,
                                                                  pinRight: true,
                                                                  pinTop: true,
                                                                  pinBottom: true,
                                                                  child: SvgPicture
                                                                      .string(
                                                                    _svg_4kyhiw,
                                                                    allowDrawingOutsideViewBox:
                                                                    true,
                                                                    fit:
                                                                    BoxFit.fill,
                                                                  ),
                                                                ),
                                                                Pinned.fromSize(
                                                                  bounds:
                                                                  Rect.fromLTWH(
                                                                      12.0,
                                                                      8.0,
                                                                      17.0,
                                                                      13.2),
                                                                  size: Size(
                                                                      40.0, 30.0),
                                                                  fixedWidth: true,
                                                                  fixedHeight: true,
                                                                  child:
                                                                  // Adobe XD layer: 'ic_reorder_24px' (shape)
                                                                  SvgPicture
                                                                      .string(
                                                                    _svg_r01xvs,
                                                                    allowDrawingOutsideViewBox:
                                                                    true,
                                                                    fit:
                                                                    BoxFit.fill,
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
                                          new GestureDetector(
                                            onTap: () => showDialog(
                                              context: context,
                                              builder: (context) => AboutWidget(
                                                title: "Blood Sugar Report Deleted.",
                                              ),
                                            ),
                                              child: Pinned.fromSize(
                                                bounds: Rect.fromLTWH(
                                                    110.0, 0.0, 40.0, 30.0),
                                                size: Size(150.0, 30.0),
                                                pinRight: true,
                                                pinTop: true,
                                                pinBottom: true,
                                                fixedWidth: true,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          0.0, 0.0, 40.0, 30.0),
                                                      size: Size(40.0, 30.0),
                                                      pinLeft: true,
                                                      pinRight: true,
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      child: SvgPicture.string(
                                                        _svg_hrobut,
                                                        allowDrawingOutsideViewBox:
                                                        true,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          13.0, 8.0, 14.0, 14.0),
                                                      size: Size(40.0, 30.0),
                                                      fixedWidth: true,
                                                      fixedHeight: true,
                                                      child:
                                                      // Adobe XD layer: 'ic_clear_24px' (shape)
                                                      SvgPicture.string(
                                                        _svg_xfitpf,
                                                        allowDrawingOutsideViewBox:
                                                        true,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ],
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

const String _svg_s6o8ld =
    '<svg viewBox="0.0 0.0 40.0 30.0" ><path  d="M 5.109488487243652 0 L 34.89051055908203 0 C 37.71240234375 0 40 6.715728759765625 40 15 C 40 23.28426933288574 37.71240234375 30 34.89051055908203 30 L 5.109488487243652 30 C 2.287596225738525 30 0 23.28426933288574 0 15 C 0 6.715728759765625 2.287596225738525 0 5.109488487243652 0 Z" fill="#f78002" fill-opacity="0.0" stroke="#000000" stroke-width="2" stroke-opacity="0.28" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6mghew =
    '<svg viewBox="13.0 6.8 15.0 16.0" ><path transform="translate(13.0, 6.84)" d="M 6.328125 0 L 8.671875 0 C 9.0615234375 0 9.375 0.3343749940395355 9.375 0.75 L 9.375 6 L 11.94433689117432 6 C 12.46582126617432 6 12.72656345367432 6.671875476837158 12.35742378234863 7.065625190734863 L 7.901368141174316 11.82187652587891 C 7.681641578674316 12.05625057220459 7.321290016174316 12.05625057220459 7.101563453674316 11.82187652587891 L 2.6396484375 7.065625190734863 C 2.2705078125 6.671875476837158 2.53125 6 3.052734375 6 L 5.625 6 L 5.625 0.75 C 5.625 0.3343749940395355 5.938477039337158 0 6.328125 0 Z M 15 11.75 L 15 15.25 C 15 15.66562652587891 14.68652439117432 16 14.296875 16 L 0.703125 16 C 0.3134765625 16 0 15.66562652587891 0 15.25 L 0 11.75 C 0 11.33437538146973 0.3134765625 11 0.703125 11 L 5.000977039337158 11 L 6.436523914337158 12.53125095367432 C 7.025391101837158 13.15937614440918 7.974610328674316 13.15937614440918 8.5634765625 12.53125095367432 L 9.9990234375 11 L 14.296875 11 C 14.68652439117432 11 15 11.33437538146973 15 11.75 Z M 11.3671875 14.5 C 11.3671875 14.15625095367432 11.10351657867432 13.875 10.78125 13.875 C 10.45898532867432 13.875 10.1953125 14.15625095367432 10.1953125 14.5 C 10.1953125 14.84375190734863 10.45898532867432 15.125 10.78125 15.125 C 11.10351657867432 15.125 11.3671875 14.84375190734863 11.3671875 14.5 Z M 13.2421875 14.5 C 13.2421875 14.15625095367432 12.97851657867432 13.875 12.65625 13.875 C 12.33398532867432 13.875 12.0703125 14.15625095367432 12.0703125 14.5 C 12.0703125 14.84375190734863 12.33398532867432 15.125 12.65625 15.125 C 12.97851657867432 15.125 13.2421875 14.84375190734863 13.2421875 14.5 Z" fill="#000000" fill-opacity="0.6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1b5z0f =
    '<svg viewBox="0.0 0.0 40.0 30.0" ><path  d="M 5.109488487243652 0 L 34.89051055908203 0 C 37.71240234375 0 40 6.715728282928467 40 15 C 40 23.28426933288574 37.71240234375 30 34.89051055908203 30 L 5.109488487243652 30 C 2.287596225738525 30 0 23.28426933288574 0 15 C 0 6.715728282928467 2.287596225738525 0 5.109488487243652 0 Z" fill="#f78002" fill-opacity="0.0" stroke="#000000" stroke-width="2" stroke-opacity="0.28" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nlnfvy =
    '<svg viewBox="12.0 8.0 17.0 13.2" ><path transform="translate(9.0, 2.97)" d="M 3 14.44444179534912 L 19.99999809265137 14.44444179534912 L 19.99999809265137 12.55555438995361 L 3 12.55555438995361 L 3 14.44444179534912 Z M 3 18.22222137451172 L 19.99999809265137 18.22222137451172 L 19.99999809265137 16.33333206176758 L 3 16.33333206176758 L 3 18.22222137451172 Z M 3 10.66666507720947 L 19.99999809265137 10.66666507720947 L 19.99999809265137 8.777776718139648 L 3 8.777776718139648 L 3 10.66666507720947 Z M 3 5 L 3 6.888887882232666 L 19.99999809265137 6.888887882232666 L 19.99999809265137 5 L 3 5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x5hvc3 =
    '<svg viewBox="0.0 0.0 40.0 30.0" ><path  d="M 5.109488964080811 0 L 34.8905143737793 0 C 37.71240234375 0 40 6.715728759765625 40 15 C 40 23.28426933288574 37.71240234375 30 34.8905143737793 30 L 5.109488964080811 30 C 2.287596464157104 30 0 23.28426933288574 0 15 C 0 6.715728759765625 2.287596464157104 0 5.109488964080811 0 Z" fill="#f78002" fill-opacity="0.0" stroke="#000000" stroke-width="2" stroke-opacity="0.28" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_al7aid =
    '<svg viewBox="13.0 8.0 14.0 14.0" ><path transform="translate(8.0, 3.0)" d="M 19 6.409999847412109 L 17.59000015258789 5 L 12 10.59000015258789 L 6.409999847412109 5 L 5 6.409999847412109 L 10.59000015258789 12 L 5 17.59000015258789 L 6.409999847412109 19 L 12 13.40999984741211 L 17.59000015258789 19 L 19 17.59000015258789 L 13.40999984741211 12 L 19 6.409999847412109 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rnzwjt =
    '<svg viewBox="13.0 6.8 15.0 16.0" ><path transform="translate(13.0, 6.84)" d="M 6.328125 0 L 8.671875 0 C 9.0615234375 0 9.375 0.3343750238418579 9.375 0.7500000596046448 L 9.375 6.000000476837158 L 11.94433689117432 6.000000476837158 C 12.46582126617432 6.000000476837158 12.72656345367432 6.671875953674316 12.35742378234863 7.065625667572021 L 7.901368141174316 11.82187652587891 C 7.681641578674316 12.05625057220459 7.321290016174316 12.05625057220459 7.101563453674316 11.82187652587891 L 2.6396484375 7.065625667572021 C 2.2705078125 6.671875953674316 2.53125 6.000000476837158 3.052734375 6.000000476837158 L 5.625 6.000000476837158 L 5.625 0.7500000596046448 C 5.625 0.3343750238418579 5.938477039337158 0 6.328125 0 Z M 15 11.75000095367432 L 15 15.25000095367432 C 15 15.66562652587891 14.68652439117432 16 14.296875 16 L 0.703125 16 C 0.3134765625 16 0 15.66562652587891 0 15.25000095367432 L 0 11.75000095367432 C 0 11.33437633514404 0.3134765625 11.00000095367432 0.703125 11.00000095367432 L 5.000977039337158 11.00000095367432 L 6.436523914337158 12.53125190734863 C 7.025391101837158 13.1593770980835 7.974610328674316 13.1593770980835 8.5634765625 12.53125190734863 L 9.9990234375 11.00000095367432 L 14.296875 11.00000095367432 C 14.68652439117432 11.00000095367432 15 11.33437633514404 15 11.75000095367432 Z M 11.3671875 14.50000095367432 C 11.3671875 14.15625190734863 11.10351657867432 13.87500095367432 10.78125 13.87500095367432 C 10.45898532867432 13.87500095367432 10.1953125 14.15625190734863 10.1953125 14.50000095367432 C 10.1953125 14.84375286102295 10.45898532867432 15.12500095367432 10.78125 15.12500095367432 C 11.10351657867432 15.12500095367432 11.3671875 14.84375286102295 11.3671875 14.50000095367432 Z M 13.2421875 14.50000095367432 C 13.2421875 14.15625190734863 12.97851657867432 13.87500095367432 12.65625 13.87500095367432 C 12.33398532867432 13.87500095367432 12.0703125 14.15625190734863 12.0703125 14.50000095367432 C 12.0703125 14.84375286102295 12.33398532867432 15.12500095367432 12.65625 15.12500095367432 C 12.97851657867432 15.12500095367432 13.2421875 14.84375286102295 13.2421875 14.50000095367432 Z" fill="#000000" fill-opacity="0.6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t8dat =
    '<svg viewBox="11.0 0.0 40.0 30.0" ><path transform="translate(11.0, 0.0)" d="M 5.109488487243652 0 L 34.89051055908203 0 C 37.71240234375 0 40 6.715728759765625 40 15 C 40 23.28426933288574 37.71240234375 30 34.89051055908203 30 L 5.109488487243652 30 C 2.287596225738525 30 0 23.28426933288574 0 15 C 0 6.715728759765625 2.287596225738525 0 5.109488487243652 0 Z" fill="#f78002" fill-opacity="0.0" stroke="#000000" stroke-width="2" stroke-opacity="0.28" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tszs6b =
    '<svg viewBox="24.0 7.0 15.0 16.0" ><path transform="translate(24.0, 7.0)" d="M 6.328125 0 L 8.671875 0 C 9.0615234375 0 9.375 0.3343750238418579 9.375 0.7500000596046448 L 9.375 6.000000476837158 L 11.94433689117432 6.000000476837158 C 12.46582126617432 6.000000476837158 12.72656345367432 6.671875953674316 12.35742378234863 7.065625667572021 L 7.901368141174316 11.82187652587891 C 7.681641578674316 12.05625057220459 7.321290016174316 12.05625057220459 7.101563453674316 11.82187652587891 L 2.6396484375 7.065625667572021 C 2.2705078125 6.671875953674316 2.53125 6.000000476837158 3.052734375 6.000000476837158 L 5.625 6.000000476837158 L 5.625 0.7500000596046448 C 5.625 0.3343750238418579 5.938477039337158 0 6.328125 0 Z M 15 11.75000095367432 L 15 15.25000095367432 C 15 15.66562652587891 14.68652439117432 16 14.296875 16 L 0.703125 16 C 0.3134765625 16 0 15.66562652587891 0 15.25000095367432 L 0 11.75000095367432 C 0 11.33437633514404 0.3134765625 11.00000095367432 0.703125 11.00000095367432 L 5.000977039337158 11.00000095367432 L 6.436523914337158 12.53125190734863 C 7.025391101837158 13.1593770980835 7.974610328674316 13.1593770980835 8.5634765625 12.53125190734863 L 9.9990234375 11.00000095367432 L 14.296875 11.00000095367432 C 14.68652439117432 11.00000095367432 15 11.33437633514404 15 11.75000095367432 Z M 11.3671875 14.50000095367432 C 11.3671875 14.15625190734863 11.10351657867432 13.87500095367432 10.78125 13.87500095367432 C 10.45898532867432 13.87500095367432 10.1953125 14.15625190734863 10.1953125 14.50000095367432 C 10.1953125 14.84375286102295 10.45898532867432 15.12500095367432 10.78125 15.12500095367432 C 11.10351657867432 15.12500095367432 11.3671875 14.84375286102295 11.3671875 14.50000095367432 Z M 13.2421875 14.50000095367432 C 13.2421875 14.15625190734863 12.97851657867432 13.87500095367432 12.65625 13.87500095367432 C 12.33398532867432 13.87500095367432 12.0703125 14.15625190734863 12.0703125 14.50000095367432 C 12.0703125 14.84375286102295 12.33398532867432 15.12500095367432 12.65625 15.12500095367432 C 12.97851657867432 15.12500095367432 13.2421875 14.84375286102295 13.2421875 14.50000095367432 Z" fill="#000000" fill-opacity="0.6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4kyhiw =
    '<svg viewBox="11.0 5.0 40.0 30.0" ><path transform="translate(11.0, 5.03)" d="M 5.109488487243652 0 L 34.89051055908203 0 C 37.71240234375 0 40 6.715728282928467 40 15 C 40 23.28426933288574 37.71240234375 30 34.89051055908203 30 L 5.109488487243652 30 C 2.287596225738525 30 0 23.28426933288574 0 15 C 0 6.715728282928467 2.287596225738525 0 5.109488487243652 0 Z" fill="#f78002" fill-opacity="0.0" stroke="#000000" stroke-width="2" stroke-opacity="0.28" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r01xvs =
    '<svg viewBox="23.0 13.0 17.0 13.2" ><path transform="translate(20.0, 8.0)" d="M 3 14.44444370269775 L 19.99999809265137 14.44444370269775 L 19.99999809265137 12.55555534362793 L 3 12.55555534362793 L 3 14.44444370269775 Z M 3 18.22222328186035 L 19.99999809265137 18.22222328186035 L 19.99999809265137 16.33333396911621 L 3 16.33333396911621 L 3 18.22222328186035 Z M 3 10.66666603088379 L 19.99999809265137 10.66666603088379 L 19.99999809265137 8.777777671813965 L 3 8.777777671813965 L 3 10.66666603088379 Z M 3 5 L 3 6.888888359069824 L 19.99999809265137 6.888888359069824 L 19.99999809265137 5 L 3 5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hrobut =
    '<svg viewBox="203.0 342.3 40.0 30.0" ><path transform="translate(203.0, 342.3)" d="M 5.109488964080811 0 L 34.8905143737793 0 C 37.71240234375 0 40 6.715728759765625 40 15 C 40 23.28426933288574 37.71240234375 30 34.8905143737793 30 L 5.109488964080811 30 C 2.287596464157104 30 0 23.28426933288574 0 15 C 0 6.715728759765625 2.287596464157104 0 5.109488964080811 0 Z" fill="#f78002" fill-opacity="0.0" stroke="#000000" stroke-width="2" stroke-opacity="0.28" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xfitpf =
    '<svg viewBox="216.0 350.3 14.0 14.0" ><path transform="translate(211.0, 345.3)" d="M 19 6.409999847412109 L 17.59000015258789 5 L 12 10.59000015258789 L 6.409999847412109 5 L 5 6.409999847412109 L 10.59000015258789 12 L 5 17.59000015258789 L 6.409999847412109 19 L 12 13.40999984741211 L 17.59000015258789 19 L 19 17.59000015258789 L 13.40999984741211 12 L 19 6.409999847412109 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
