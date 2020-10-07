import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:hemashealth/LoginRegister/userRegister.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class NumberVerify extends StatelessWidget {
  NumberVerify({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
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
            ),
          ),
          Transform.translate(
            offset: Offset(32.0, 105.0),
            child: SizedBox(
              width: 350.0,
              height: 542.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 60.0, 350.0, 542.0),
                    size: Size(350.0, 542.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 350.0, 542.0),
                          size: Size(350.0, 542.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(10.0, 0.0, 330.0, 43.0),
                                size: Size(350.0, 542.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 330.0, 43.0),
                                      size: Size(330.0, 43.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 330.0, 43.0),
                                            size: Size(330.0, 43.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 330.0, 43.0),
                                                  size: Size(330.0, 43.0),
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
                                                            330.0,
                                                            43.0),
                                                        size: Size(330.0, 43.0),
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
                                                                      330.0,
                                                                      43.0),
                                                              size: Size(
                                                                  330.0, 43.0),
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
                                                                            330.0,
                                                                            43.0),
                                                                    size: Size(
                                                                        330.0,
                                                                        43.0),
                                                                    pinLeft:
                                                                        true,
                                                                    pinRight:
                                                                        true,
                                                                    pinTop:
                                                                        true,
                                                                    pinBottom:
                                                                        true,
                                                                    child:
                                                                        Stack(
                                                                      children: <
                                                                          Widget>[
                                                                        Pinned
                                                                            .fromSize(
                                                                          bounds: Rect.fromLTWH(
                                                                              0.0,
                                                                              0.0,
                                                                              330.0,
                                                                              43.0),
                                                                          size: Size(
                                                                              330.0,
                                                                              43.0),
                                                                          pinLeft:
                                                                              true,
                                                                          pinRight:
                                                                              true,
                                                                          pinTop:
                                                                              true,
                                                                          pinBottom:
                                                                              true,
                                                                          child:
                                                                              Text(
                                                                            'Verify Mobile Number',
                                                                            style:
                                                                                TextStyle(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 30,
                                                                              color: const Color(0xffffffff),
                                                                              fontWeight: FontWeight.w600,
                                                                              height: 0.5333333333333333,
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
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
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 92.0, 350.0, 450.0),
                                size: Size(350.0, 542.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 350.0, 450.0),
                                      size: Size(350.0, 450.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(126.0, 144.0, 91.0, 24.0),
                          size: Size(350.0, 542.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Enter code',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                              color: const Color(0xff333348),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(114.0, 174.0, 115.0, 37.0),
                          size: Size(350.0, 542.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '******',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 27,
                              color: const Color(0xff27ae60),
                              letterSpacing: 6.21,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(86.0, 221.0, 172.0, 35.0),
                          size: Size(350.0, 542.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'We have sent you an SMS \nwith 6 digit verification code.',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: const Color(0xff898a8f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(86.0, 290.0, 172.0, 35.0),
                          size: Size(350.0, 542.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: TextField(
                            style: TextStyle(
                                letterSpacing: 14.0,
                                fontSize: 25
                            ),
                            decoration: new InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                              ), ),
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black12,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(6),
                            ], // Only numbers can be entered
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(32.0, 331.3, 280.0, 86.7),
                          size: Size(350.0, 542.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 36.7, 280.0, 50.0),
                                size: Size(280.0, 86.7),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: PageLink(
                                  links: [
                                    PageLinkInfo(
                                      transition: LinkTransition.Fade,
                                      ease: Curves.easeOut,
                                      duration: 0.3,
                                      pageBuilder: () => UserRegister(),
                                    ),
                                  ],
                                  child: Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(
                                            0.0, 0.0, 280.0, 50.0),
                                        size: Size(280.0, 50.0),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        pinBottom: true,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            gradient: LinearGradient(
                                              begin: Alignment(0.88, -0.84),
                                              end: Alignment(-0.69, 1.0),
                                              colors: [
                                                const Color(0xffefa405),
                                                const Color(0xffff6000)
                                              ],
                                              stops: [0.0, 1.0],
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x33000000),
                                                offset: Offset(0, 15),
                                                blurRadius: 45,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(
                                            113.0, 16.0, 55.0, 21.0),
                                        size: Size(280.0, 50.0),
                                        fixedWidth: true,
                                        fixedHeight: true,
                                        child: Text(
                                          'Submit',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(9.0, 0.0, 262.4, 0.0),
                                size: Size(280.0, 86.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 31.4, 1.0),
                                      size: Size(262.4, 0.0),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_8s3w6z,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(45.0, 0.0, 31.4, 1.0),
                                      size: Size(262.4, 0.0),
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_qsmr22,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(91.0, 0.0, 31.4, 1.0),
                                      size: Size(262.4, 0.0),
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_9nzccv,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(137.0, 0.0, 31.4, 1.0),
                                      size: Size(262.4, 0.0),
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_pmik58,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(183.0, 0.0, 31.4, 1.0),
                                      size: Size(262.4, 0.0),
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_7n7vsh,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(231.0, 0.0, 31.4, 1.0),
                                      size: Size(262.4, 0.0),
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_6trd6s,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(144.0, 483.0, 59.0, 20.0),
                          size: Size(350.0, 542.0),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 59.0, 20.0),
                                size: Size(59.0, 20.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Text(
                                  'Re-send',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    color: const Color(0xff414141),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(96.0, 446.0, 152.0, 17.0),
                          size: Size(350.0, 542.0),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Did not receive the code?',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: const Color(0xff313450),
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
          ),
        ],
      ),
    );
  }
}

const String _svg_8s3w6z =
    '<svg viewBox="32.1 192.3 31.4 1.0" ><path transform="translate(-2709.0, 143.0)" d="M 2741.109619140625 49.26689529418945 L 2772.537109375 49.26689529418945" fill="none" stroke="#c9c9c9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qsmr22 =
    '<svg viewBox="77.1 192.3 31.4 1.0" ><path transform="translate(-2664.0, 143.0)" d="M 2741.109619140625 49.26689529418945 L 2772.537109375 49.26689529418945" fill="none" stroke="#c9c9c9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9nzccv =
    '<svg viewBox="123.1 192.3 31.4 1.0" ><path transform="translate(-2618.0, 143.0)" d="M 2741.109619140625 49.26689529418945 L 2772.537109375 49.26689529418945" fill="none" stroke="#c9c9c9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pmik58 =
    '<svg viewBox="169.1 192.3 31.4 1.0" ><path transform="translate(-2572.0, 143.0)" d="M 2741.109619140625 49.26689529418945 L 2772.537109375 49.26689529418945" fill="none" stroke="#c9c9c9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7n7vsh =
    '<svg viewBox="215.1 192.3 31.4 1.0" ><path transform="translate(-2526.0, 143.0)" d="M 2741.109619140625 49.26689529418945 L 2772.537109375 49.26689529418945" fill="none" stroke="#c9c9c9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6trd6s =
    '<svg viewBox="263.1 192.3 31.4 1.0" ><path transform="translate(-2478.0, 143.0)" d="M 2741.109619140625 49.26689529418945 L 2772.537109375 49.26689529418945" fill="none" stroke="#c9c9c9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
