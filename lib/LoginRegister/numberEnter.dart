import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'numberVerify.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class NumberEnter extends StatelessWidget {
  final VoidCallback card;
  NumberEnter({
    Key key,
    this.card,
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
              height: 526.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 60.0, 350.0, 526.0),
                    size: Size(350.0, 526.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 350.0, 526.0),
                          size: Size(350.0, 526.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(16.0, 0.0, 318.0, 43.0),
                                size: Size(350.0, 526.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 318.0, 43.0),
                                      size: Size(318.0, 43.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 318.0, 43.0),
                                            size: Size(318.0, 43.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 318.0, 43.0),
                                                  size: Size(318.0, 43.0),
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
                                                            318.0,
                                                            43.0),
                                                        size: Size(318.0, 43.0),
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
                                                                      318.0,
                                                                      43.0),
                                                              size: Size(
                                                                  318.0, 43.0),
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
                                                                            318.0,
                                                                            43.0),
                                                                    size: Size(
                                                                        318.0,
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
                                                                              318.0,
                                                                              43.0),
                                                                          size: Size(
                                                                              318.0,
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
                                                                            'Enter Mobile Number',
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
                                bounds: Rect.fromLTWH(0.0, 92.0, 350.0, 434.0),
                                size: Size(350.0, 526.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 350.0, 434.0),
                                      size: Size(350.0, 434.0),
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
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          27.0, 240.0, 293.0, 141.0),
                                      size: Size(350.0, 434.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 293.0, 141.0),
                                            size: Size(293.0, 141.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 293.0, 46.0),
                                                  size: Size(293.0, 141.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  fixedHeight: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            293.0,
                                                            46.0),
                                                        size: Size(293.0, 46.0),
                                                        pinLeft: true,
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      64.0,
                                                                      0.0,
                                                                      229.0,
                                                                      46.0),
                                                              size: Size(
                                                                  293.0, 46.0),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border.all(
                                                                      width:
                                                                          1.0,
                                                                      color: const Color(
                                                                          0xffececec)),
                                                                ),
                                                              ),
                                                            ),
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      12.0,
                                                                      14.0,
                                                                      27.0,
                                                                      20.0),
                                                              size: Size(
                                                                  293.0, 46.0),
                                                              pinLeft: true,
                                                              fixedWidth: true,
                                                              fixedHeight: true,
                                                              child: Text(
                                                                '+94',
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 14,
                                                                  color: const Color(
                                                                      0xff313450),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                            ),
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      77.0,
                                                                      15.0,
                                                                      150.0,
                                                                      20.0),
                                                              size: Size(
                                                                  293.0, 46.0),
                                                              fixedWidth: true,
                                                              fixedHeight: true,
                                                              child: new TextField(
                                                                style: TextStyle(
                                                                    letterSpacing: 2.0,
                                                                    fontSize: 16
                                                                ),
                                                                decoration: new InputDecoration(
                                                                  contentPadding:
                                                                  EdgeInsets.only(left: 0, bottom: 12, top: 0, right: 0),
                                                                  hintText: "Enter number",
                                                                  focusedBorder: UnderlineInputBorder(
                                                                    borderSide: BorderSide(color: Colors.green),
                                                                  ), ),
                                                                keyboardType: TextInputType.number,
                                                                cursorColor: Colors.black12,
                                                                inputFormatters: <TextInputFormatter>[
                                                                  FilteringTextInputFormatter.digitsOnly,
                                                                  LengthLimitingTextInputFormatter(10),
                                                                ], // Only numbers can be entered
                                                              ),
                                                            ),
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      52.0,
                                                                      46.0),
                                                              size: Size(
                                                                  293.0, 46.0),
                                                              pinLeft: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              fixedWidth: true,
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border.all(
                                                                      width:
                                                                          1.0,
                                                                      color: const Color(
                                                                          0xffececec)),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            259.0,
                                                            13.0,
                                                            22.0,
                                                            22.0),
                                                        size: Size(293.0, 46.0),
                                                        pinRight: true,
                                                        fixedWidth: true,
                                                        fixedHeight: true,
                                                        child: Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      22.0,
                                                                      22.0),
                                                              size: Size(
                                                                  22.0, 22.0),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius: BorderRadius.all(
                                                                      Radius.elliptical(
                                                                          9999.0,
                                                                          9999.0)),
                                                                  color: const Color(
                                                                      0xff27ae60),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      color: const Color(
                                                                          0x1a000000),
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              3),
                                                                      blurRadius:
                                                                          6,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      7.0,
                                                                      8.1,
                                                                      8.6,
                                                                      6.9),
                                                              size: Size(
                                                                  22.0, 22.0),
                                                              fixedWidth: true,
                                                              fixedHeight: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_ncqhqz,
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
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      6.0, 91.0, 280.0, 50.0),
                                                  size: Size(293.0, 141.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinBottom: true,
                                                  fixedHeight: true,
                                                  child: PageLink(
                                                    links: [
                                                      PageLinkInfo(
                                                        transition:
                                                            LinkTransition.Fade,
                                                        ease: Curves.easeOut,
                                                        duration: 0.3,
                                                        pageBuilder: () =>
                                                            NumberVerify(),
                                                      ),
                                                    ],
                                                    child: Stack(
                                                      children: <Widget>[
                                                        Pinned.fromSize(
                                                          bounds: Rect.fromLTWH(
                                                              0.0,
                                                              0.0,
                                                              280.0,
                                                              50.0),
                                                          size:
                                                              Size(280.0, 50.0),
                                                          pinLeft: true,
                                                          pinRight: true,
                                                          pinTop: true,
                                                          pinBottom: true,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          25.0),
                                                              gradient:
                                                                  LinearGradient(
                                                                begin:
                                                                    Alignment(
                                                                        0.88,
                                                                        -0.84),
                                                                end: Alignment(
                                                                    -0.69, 1.0),
                                                                colors: [
                                                                  const Color(
                                                                      0xffefa405),
                                                                  const Color(
                                                                      0xffff6000)
                                                                ],
                                                                stops: [
                                                                  0.0,
                                                                  1.0
                                                                ],
                                                              ),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: const Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(0,
                                                                          15),
                                                                  blurRadius:
                                                                      45,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Pinned.fromSize(
                                                          bounds: Rect.fromLTWH(
                                                              115.0,
                                                              16.0,
                                                              55.0,
                                                              21.0),
                                                          size:
                                                              Size(280.0, 50.0),
                                                          fixedWidth: true,
                                                          fixedHeight: true,
                                                          child: Text(
                                                            'Submit',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15,
                                                              color: const Color(
                                                                  0xffffffff),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                            textAlign:
                                                                TextAlign.left,
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
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          57.0, 161.0, 234.0, 35.0),
                                      size: Size(350.0, 434.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Enter your mobile number we will send \nyou the OTP to verify later',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: const Color(0xff898a8f),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          123.1, 65.5, 101.8, 73.7),
                                      size: Size(350.0, 434.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'verification' (group)
                                          GestureDetector(
                                        onTap: () => card?.call(),
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 0.0, 101.8, 66.7),
                                              size: Size(101.8, 73.7),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child: SvgPicture.string(
                                                _svg_35xpwq,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  14.0, 45.6, 31.6, 21.1),
                                              size: Size(101.8, 73.7),
                                              pinLeft: true,
                                              pinBottom: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_qnfqfk,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  7.0, 7.0, 45.6, 52.6),
                                              size: Size(101.8, 73.7),
                                              pinLeft: true,
                                              pinTop: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_l2fv8v,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  14.1, 45.6, 31.4, 14.0),
                                              size: Size(101.8, 73.7),
                                              pinLeft: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_wzy607,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  14.0, 15.8, 31.6, 36.9),
                                              size: Size(101.8, 73.7),
                                              pinLeft: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_rm0lnv,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  57.9, 8.8, 28.1, 3.5),
                                              size: Size(101.8, 73.7),
                                              pinTop: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_yas9t,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  57.9, 15.8, 36.9, 3.5),
                                              size: Size(101.8, 73.7),
                                              pinRight: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_wzmo4c,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  68.4, 40.4, 26.3, 3.5),
                                              size: Size(101.8, 73.7),
                                              pinRight: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_3tm7xu,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  57.9, 40.4, 7.0, 3.5),
                                              size: Size(101.8, 73.7),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_2rn4wv,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  68.4, 47.4, 21.1, 3.5),
                                              size: Size(101.8, 73.7),
                                              pinRight: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_vfwj27,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  57.9, 47.4, 7.0, 3.5),
                                              size: Size(101.8, 73.7),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_70t3wa,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  68.4, 54.4, 21.1, 3.5),
                                              size: Size(101.8, 73.7),
                                              pinRight: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_90hbpu,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  57.9, 54.4, 7.0, 3.5),
                                              size: Size(101.8, 73.7),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_umyn15,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  58.8, 25.4, 8.8, 8.8),
                                              size: Size(101.8, 73.7),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_v1inhk,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  72.8, 25.4, 22.8, 8.8),
                                              size: Size(101.8, 73.7),
                                              pinRight: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 0.0, 8.8, 8.8),
                                                    size: Size(22.8, 8.8),
                                                    pinLeft: true,
                                                    pinTop: true,
                                                    pinBottom: true,
                                                    fixedWidth: true,
                                                    child: SvgPicture.string(
                                                      _svg_qpfgow,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        14.0, 0.0, 8.8, 8.8),
                                                    size: Size(22.8, 8.8),
                                                    pinRight: true,
                                                    pinTop: true,
                                                    pinBottom: true,
                                                    fixedWidth: true,
                                                    child: SvgPicture.string(
                                                      _svg_o8vaso,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  16.7, 45.6, 26.3, 7.0),
                                              size: Size(101.8, 73.7),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_5vie9d,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  17.5, 49.1, 24.6, 24.6),
                                              size: Size(101.8, 73.7),
                                              pinBottom: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_ltovzj,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  22.8, 56.2, 14.0, 10.5),
                                              size: Size(101.8, 73.7),
                                              pinBottom: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_pf3ojg,
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
          ),
        ],
      ),
    );
  }
}

const String _svg_ncqhqz =
    '<svg viewBox="293.0 276.1 8.6 6.9" ><path transform="translate(-2276.85, 143.92)" d="M 2569.84130859375 135.7389221191406 L 2572.769775390625 139.0052185058594 L 2578.4013671875 132.1347045898438" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_35xpwq =
    '<svg viewBox="0.0 70.6 101.8 66.7" ><path  d="M 94.76557159423828 137.3077850341797 L 7.019598007202148 137.3077850341797 C 3.142815828323364 137.3077850341797 0 134.1649780273438 0 130.2881774902344 L 0 77.64060211181641 C 0 73.76381683349609 3.142815828323364 70.62100219726563 7.019598007202148 70.62100219726563 L 94.76557159423828 70.62100219726563 C 98.64234924316406 70.62100219726563 101.7851638793945 73.76381683349609 101.7851638793945 77.64060211181641 L 101.7851638793945 130.2881774902344 C 101.7851638793945 134.1649780273438 98.64234924316406 137.3077850341797 94.76557159423828 137.3077850341797 Z" fill="#e4eaf8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qnfqfk =
    '<svg viewBox="14.0 116.2 31.6 21.1" ><path transform="translate(-56.58, -183.89)" d="M 86.41520690917969 300.1380004882813 C 77.69209289550781 300.1380004882813 70.62100219726563 307.2092895507813 70.62100219726563 315.9321899414063 C 70.62100219726563 317.7812194824219 70.95518493652344 319.5479431152344 71.5390625 321.1969909667969 L 101.2915344238281 321.1969909667969 C 101.8752136230469 319.5479431152344 102.2095947265625 317.7812194824219 102.2095947265625 315.9321899414063 C 102.2093887329102 307.2092895507813 95.1383056640625 300.1380004882813 86.41520690917969 300.1380004882813 Z" fill="#d5dced" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l2fv8v =
    '<svg viewBox="7.0 77.6 45.6 52.6" ><path transform="translate(-28.29, -28.29)" d="M 79.1829833984375 158.5785827636719 L 37.06499862670898 158.5785827636719 C 36.09585571289063 158.5785827636719 35.31000137329102 157.792724609375 35.31000137329102 156.8235778808594 L 35.31000137329102 107.6859970092773 C 35.31000137329102 106.7168502807617 36.09585571289063 105.9309997558594 37.06499862670898 105.9309997558594 L 79.1829833984375 105.9309997558594 C 80.15212249755859 105.9309997558594 80.93798065185547 106.7168502807617 80.93798065185547 107.6859970092773 L 80.93798065185547 156.8235778808594 C 80.93798065185547 157.792724609375 80.15212249755859 158.5785827636719 79.1829833984375 158.5785827636719 Z" fill="#afb9d2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wzy607 =
    '<svg viewBox="14.1 116.2 31.4 14.0" ><path transform="translate(-57.0, -183.89)" d="M 71.13800048828125 314.1773986816406 L 102.5208358764648 314.1773986816406 C 101.6471099853516 306.2810974121094 94.95870971679688 300.1380004882813 86.82941436767578 300.1380004882813 C 78.70011901855469 300.1380004882813 72.01191711425781 306.2810974121094 71.13800048828125 314.1773986816406 Z" fill="#959cb5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rm0lnv =
    '<svg viewBox="14.0 86.4 31.6 36.9" ><path transform="translate(-56.58, -63.65)" d="M 100.452995300293 186.92138671875 C 101.4221343994141 186.92138671875 102.2079772949219 186.1355285644531 102.2079772949219 185.1663818359375 L 102.2079772949219 180.676513671875 C 102.2079772949219 179.1658477783203 101.2412261962891 177.8245391845703 99.80807495117188 177.3468322753906 L 92.87576293945313 175.0359954833984 C 92.16047668457031 174.7976226806641 91.67739868164063 174.1288757324219 91.67580413818359 173.3750152587891 L 91.66924285888672 170.2542724609375 C 92.76482391357422 169.7065734863281 93.49561309814453 168.6273040771484 93.59719848632813 167.4064788818359 L 93.98067474365234 163.2275085449219 C 94.71484375 162.5843963623047 95.18818664550781 161.6504364013672 95.18818664550781 160.5975952148438 L 95.18818664550781 151.8230133056641 C 95.18818664550781 150.8538665771484 94.40232849121094 150.0680084228516 93.43318939208984 150.0680084228516 L 82.90358734130859 150.0680084228516 C 79.99595642089844 150.0680084228516 77.6387939453125 152.4251708984375 77.6387939453125 155.3328094482422 L 77.6387939453125 160.5975952148438 C 77.6387939453125 161.650634765625 78.11213684082031 162.5843963623047 78.84630584716797 163.2275085449219 L 79.22978210449219 167.4064788818359 C 79.33136749267578 168.6271057128906 80.06234741210938 169.7065734863281 81.15773773193359 170.2542724609375 L 81.15117645263672 173.3750152587891 C 81.14958190917969 174.1290588378906 80.66650390625 174.7978363037109 79.95122528076172 175.0359954833984 L 73.01890563964844 177.3468322753906 C 71.58575439453125 177.8245544433594 70.61900329589844 179.1658477783203 70.61900329589844 180.676513671875 L 70.61900329589844 185.1663818359375 C 70.61900329589844 186.1355285644531 71.40484619140625 186.92138671875 72.37400054931641 186.92138671875 L 100.452995300293 186.92138671875 Z" fill="#e4eaf8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yas9t =
    '<svg viewBox="57.9 79.4 28.1 3.5" ><path transform="translate(-233.4, -35.36)" d="M 317.6337890625 118.2679901123047 L 293.0649719238281 118.2679901123047 C 292.0950622558594 118.2679901123047 291.3099975585938 117.4821319580078 291.3099975585938 116.5130004882813 C 291.3099975585938 115.5438537597656 292.0948791503906 114.7579956054688 293.0649719238281 114.7579956054688 L 317.6337890625 114.7579956054688 C 318.6037292480469 114.7579956054688 319.3888244628906 115.5438537597656 319.3888244628906 116.5130004882813 C 319.3888244628906 117.4821319580078 318.6039428710938 118.2679901123047 317.6337890625 118.2679901123047 Z" fill="#7f8499" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wzmo4c =
    '<svg viewBox="57.9 86.4 36.9 3.5" ><path transform="translate(-233.4, -63.65)" d="M 326.4084167480469 153.5780029296875 L 293.0649719238281 153.5780029296875 C 292.0950622558594 153.5780029296875 291.3099975585938 152.7921447753906 291.3099975585938 151.822998046875 C 291.3099975585938 150.8538513183594 292.0948791503906 150.0679931640625 293.0649719238281 150.0679931640625 L 326.4084167480469 150.0679931640625 C 327.3783569335938 150.0679931640625 328.1633911132813 150.8538513183594 328.1633911132813 151.822998046875 C 328.1633911132813 152.7923431396484 327.3785095214844 153.5780029296875 326.4084167480469 153.5780029296875 Z" fill="#707487" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3tm7xu =
    '<svg viewBox="68.4 111.0 26.3 3.5" ><path transform="translate(-275.83, -162.67)" d="M 368.843994140625 277.1640014648438 L 346.0299987792969 277.1640014648438 C 345.06005859375 277.1640014648438 344.2749938964844 276.3781127929688 344.2749938964844 275.4089660644531 C 344.2749938964844 274.4398193359375 345.0598449707031 273.6539916992188 346.0299987792969 273.6539916992188 L 368.843994140625 273.6539916992188 C 369.8139343261719 273.6539916992188 370.5989685058594 274.4398193359375 370.5989685058594 275.4089660644531 C 370.5989685058594 276.3781127929688 369.8141479492188 277.1640014648438 368.843994140625 277.1640014648438 Z" fill="#959cb5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2rn4wv =
    '<svg viewBox="57.9 111.0 7.0 3.5" ><path transform="translate(-233.4, -162.67)" d="M 296.5748291015625 277.1640014648438 L 293.0649719238281 277.1640014648438 C 292.0950622558594 277.1640014648438 291.3099975585938 276.3781127929688 291.3099975585938 275.4089660644531 C 291.3099975585938 274.4398193359375 292.0948791503906 273.6539916992188 293.0649719238281 273.6539916992188 L 296.5748291015625 273.6539916992188 C 297.5447387695313 273.6539916992188 298.3298034667969 274.4398193359375 298.3298034667969 275.4089660644531 C 298.3298034667969 276.3781127929688 297.544921875 277.1640014648438 296.5748291015625 277.1640014648438 Z" fill="#7f8499" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vfwj27 =
    '<svg viewBox="68.4 118.0 21.1 3.5" ><path transform="translate(-275.83, -190.96)" d="M 363.5791931152344 312.4749755859375 L 346.0299987792969 312.4749755859375 C 345.06005859375 312.4749755859375 344.2749938964844 311.6891479492188 344.2749938964844 310.7200012207031 C 344.2749938964844 309.7508544921875 345.0598449707031 308.9649963378906 346.0299987792969 308.9649963378906 L 363.5791931152344 308.9649963378906 C 364.5491333007813 308.9649963378906 365.3341979980469 309.7508544921875 365.3341979980469 310.7200012207031 C 365.3341979980469 311.6891479492188 364.5493469238281 312.4749755859375 363.5791931152344 312.4749755859375 Z" fill="#959cb5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_70t3wa =
    '<svg viewBox="57.9 118.0 7.0 3.5" ><path transform="translate(-233.4, -190.96)" d="M 296.5748291015625 312.4749755859375 L 293.0649719238281 312.4749755859375 C 292.0950622558594 312.4749755859375 291.3099975585938 311.6891479492188 291.3099975585938 310.7200012207031 C 291.3099975585938 309.7508544921875 292.0948791503906 308.9649963378906 293.0649719238281 308.9649963378906 L 296.5748291015625 308.9649963378906 C 297.5447387695313 308.9649963378906 298.3298034667969 309.7508544921875 298.3298034667969 310.7200012207031 C 298.3298034667969 311.6891479492188 297.544921875 312.4749755859375 296.5748291015625 312.4749755859375 Z" fill="#7f8499" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_90hbpu =
    '<svg viewBox="68.4 125.0 21.1 3.5" ><path transform="translate(-275.83, -219.25)" d="M 363.5791931152344 347.7849731445313 L 346.0299987792969 347.7849731445313 C 345.06005859375 347.7849731445313 344.2749938964844 346.9991455078125 344.2749938964844 346.0299987792969 C 344.2749938964844 345.0608520507813 345.0598449707031 344.2749938964844 346.0299987792969 344.2749938964844 L 363.5791931152344 344.2749938964844 C 364.5491333007813 344.2749938964844 365.3341979980469 345.0608520507813 365.3341979980469 346.0299987792969 C 365.3341979980469 346.9991455078125 364.5493469238281 347.7849731445313 363.5791931152344 347.7849731445313 Z" fill="#959cb5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_umyn15 =
    '<svg viewBox="57.9 125.0 7.0 3.5" ><path transform="translate(-233.4, -219.25)" d="M 296.5748291015625 347.7849731445313 L 293.0649719238281 347.7849731445313 C 292.0950622558594 347.7849731445313 291.3099975585938 346.9991455078125 291.3099975585938 346.0299987792969 C 291.3099975585938 345.0608520507813 292.0948791503906 344.2749938964844 293.0649719238281 344.2749938964844 L 296.5748291015625 344.2749938964844 C 297.5447387695313 344.2749938964844 298.3298034667969 345.0608520507813 298.3298034667969 346.0299987792969 C 298.3298034667969 346.9991455078125 297.544921875 347.7849731445313 296.5748291015625 347.7849731445313 Z" fill="#7f8499" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qpfgow =
    '<svg viewBox="0.0 0.0 8.8 8.8" ><path  d="M 4.387298583984375 0 C 6.810336589813232 0 8.77459716796875 1.964260578155518 8.77459716796875 4.387298583984375 C 8.77459716796875 6.810336589813232 6.810336589813232 8.77459716796875 4.387298583984375 8.77459716796875 C 1.964260578155518 8.77459716796875 0 6.810336589813232 0 4.387298583984375 C 0 1.964260578155518 1.964260578155518 0 4.387298583984375 0 Z" fill="#f1c40e" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o8vaso =
    '<svg viewBox="14.0 0.0 8.8 8.8" ><path transform="translate(14.04, 0.0)" d="M 4.387298583984375 0 C 6.810336589813232 0 8.77459716796875 1.964260578155518 8.77459716796875 4.387298583984375 C 8.77459716796875 6.810336589813232 6.810336589813232 8.77459716796875 4.387298583984375 8.77459716796875 C 1.964260578155518 8.77459716796875 0 6.810336589813232 0 4.387298583984375 C 0 1.964260578155518 1.964260578155518 0 4.387298583984375 0 Z" fill="#f1c40e" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v1inhk =
    '<svg viewBox="58.8 96.1 8.8 8.8" ><path transform="translate(58.79, 96.07)" d="M 4.387298583984375 0 C 6.810336589813232 0 8.77459716796875 1.964260578155518 8.77459716796875 4.387298583984375 C 8.77459716796875 6.810336589813232 6.810336589813232 8.77459716796875 4.387298583984375 8.77459716796875 C 1.964260578155518 8.77459716796875 0 6.810336589813232 0 4.387298583984375 C 0 1.964260578155518 1.964260578155518 0 4.387298583984375 0 Z" fill="#27ae60" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5vie9d =
    '<svg viewBox="16.7 116.2 26.3 7.0" ><path transform="translate(-67.32, -183.89)" d="M 110.2797622680664 307.1575927734375 C 107.4462738037109 302.9255676269531 102.6241989135742 300.1380004882813 97.14888000488281 300.1380004882813 C 91.67355346679688 300.1380004882813 86.85148620605469 302.92578125 84.01799774169922 307.1575927734375 L 110.2797622680664 307.1575927734375 Z" fill="#d5dced" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ltovzj =
    '<svg viewBox="17.5 119.8 24.6 24.6" ><path transform="translate(17.55, 119.76)" d="M 12.28439617156982 0 C 19.06888008117676 0 24.56879234313965 5.499911785125732 24.56879234313965 12.28439617156982 C 24.56879234313965 19.06888008117676 19.06888008117676 24.56879234313965 12.28439617156982 24.56879234313965 C 5.499911785125732 24.56879234313965 0 19.06888008117676 0 12.28439617156982 C 0 5.499911785125732 5.499911785125732 0 12.28439617156982 0 Z" fill="#27ae60" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pf3ojg =
    '<svg viewBox="22.8 126.8 14.0 10.5" ><path transform="translate(-91.94, -226.33)" d="M 120.6069793701172 363.6328430175781 C 120.2006378173828 363.6328430175781 119.7946929931641 363.4930725097656 119.4656829833984 363.2103576660156 L 115.3714141845703 359.7005615234375 C 114.6346588134766 359.0699768066406 114.5487823486328 357.9618835449219 115.1811676025391 357.2259216308594 C 115.8117523193359 356.4905700683594 116.920654296875 356.4058837890625 117.6540222167969 357.0356750488281 L 120.4594879150391 359.4409484863281 L 125.7481231689453 353.6723937988281 C 126.4027862548828 352.9569396972656 127.5116882324219 352.9106140136719 128.2279510498047 353.564453125 C 128.9426422119141 354.2198791503906 128.9907531738281 355.32958984375 128.3359069824219 356.0442504882813 L 121.9005737304688 363.0638732910156 C 121.5546722412109 363.4407958984375 121.0817108154297 363.6328430175781 120.6069793701172 363.6328430175781 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
