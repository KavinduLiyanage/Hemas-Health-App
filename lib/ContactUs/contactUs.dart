import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hemashealth/dashboard.dart';
import 'package:hemashealth/widgets/alert_dialog2.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';

import '../constants.dart';

class ContactUs extends StatelessWidget {
  final VoidCallback send;
  ContactUs({
    Key key,
    this.send,
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
          "Contact Us",
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(fontWeight: FontWeight.w500,  fontSize: 20),
        ),
        backgroundColor: Color(0x44000000),
        elevation: 0,
      ),
      backgroundColor: const Color(0xffffffff),
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
            offset: Offset(19.0, 109.0),
            child: SizedBox(
              width: 376.0,
              height: 613.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 5.0, 376.0, 613.0),
                    size: Size(376.0, 613.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 223.0, 376.0, 207.0),
                          size: Size(376.0, 613.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 207.0),
                                size: Size(376.0, 207.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 376.0, 207.0),
                                      size: Size(376.0, 207.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 376.0, 207.0),
                                            size: Size(376.0, 207.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 376.0, 207.0),
                                                  size: Size(376.0, 207.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                      color: const Color(
                                                          0xffffffff),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color(
                                                              0x29000000),
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
                                      bounds: Rect.fromLTWH(
                                          18.0, 13.0, 331.0, 70.0),
                                      size: Size(376.0, 207.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                202.6, 2.0, 128.4, 67.0),
                                            size: Size(331.0, 70.0),
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 128.4, 67.0),
                                                  size: Size(128.4, 67.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: PageLink(
                                                    links: [
                                                      PageLinkInfo(
                                                        transition:
                                                            LinkTransition.Fade,
                                                        ease: Curves.easeOut,
                                                        duration: 0.3,
                                                        pageBuilder: () =>
                                                            Dashboard(),
                                                      ),
                                                    ],
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: const AssetImage(
                                                              'assets/images/mapnew.png'),
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 184.0, 70.0),
                                            size: Size(331.0, 70.0),
                                            pinLeft: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 184.0, 21.0),
                                                  size: Size(184.0, 70.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  fixedHeight: true,
                                                  child: Text(
                                                    'Hemas Hospital Wattala',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 15,
                                                      color: const Color(
                                                          0xff000000),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 23.0, 107.0, 47.0),
                                                  size: Size(184.0, 70.0),
                                                  pinLeft: true,
                                                  pinBottom: true,
                                                  fixedWidth: true,
                                                  fixedHeight: true,
                                                  child: Text(
                                                    '389, Negambo Road, \nWattala,\nSri Lanka.',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10,
                                                      color: const Color(
                                                          0xff000000),
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(16.0, 101.0, 332.2, 87.8),
                                size: Size(376.0, 207.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          204.9, 21.4, 127.3, 66.4),
                                      size: Size(332.2, 87.8),
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 127.3, 66.4),
                                            size: Size(127.3, 66.4),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: PageLink(
                                              links: [
                                                PageLinkInfo(
                                                  transition:
                                                      LinkTransition.Fade,
                                                  ease: Curves.easeOut,
                                                  duration: 0.3,
                                                  pageBuilder: () =>
                                                      Dashboard(),
                                                ),
                                              ],
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: const AssetImage(
                                                        'assets/images/mapnew.png'),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 254.0, 76.0),
                                      size: Size(332.2, 87.8),
                                      pinLeft: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 254.0, 21.0),
                                            size: Size(254.0, 76.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Hemas Hospital Thalawathugoda',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 29.0, 126.0, 47.0),
                                            size: Size(254.0, 76.0),
                                            pinLeft: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              '647/2A, Pannipitiya Road,\nThalawathugoda,\nSri Lanka.',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                color: const Color(0xff000000),
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 443.0, 376.0, 50.0),
                          size: Size(376.0, 613.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: PageLink(
                            links: [
                              PageLinkInfo(
                                transition: LinkTransition.Fade,
                                ease: Curves.easeOut,
                                duration: 0.3,
                                pageBuilder: () => Dashboard(),
                              ),
                            ],
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 50.0),
                                  size: Size(376.0, 50.0),
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
                                  bounds:
                                      Rect.fromLTWH(112.0, 13.4, 118.0, 23.0),
                                  size: Size(376.0, 50.0),
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: Text(
                                    '+94 117888888',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      color: const Color(0xfff78002),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(30.0, 16.7, 20.0, 20.0),
                                  size: Size(376.0, 50.0),
                                  pinLeft: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child:
                                      // Adobe XD layer: 'ic_call_24px' (shape)
                                      SvgPicture.string(
                                    _svg_ft0x0j,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(82.5, 6.5, 1.0, 38.0),
                                  size: Size(376.0, 50.0),
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child: SvgPicture.string(
                                    _svg_rmff9w,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 503.0, 376.0, 50.0),
                          size: Size(376.0, 613.0),
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
                                pageBuilder: () => Dashboard(),
                              ),
                            ],
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 50.0),
                                  size: Size(376.0, 50.0),
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
                                  bounds:
                                      Rect.fromLTWH(112.0, 13.4, 118.0, 23.0),
                                  size: Size(376.0, 50.0),
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: Text(
                                    '+94 117888888',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      color: const Color(0xfff78002),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(82.5, 6.5, 1.0, 38.0),
                                  size: Size(376.0, 50.0),
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child: SvgPicture.string(
                                    _svg_rmff9w,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(28.0, 15.0, 22.2, 20.0),
                                  size: Size(376.0, 50.0),
                                  pinLeft: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child:
                                      // Adobe XD layer: 'ic_print_24px' (shape)
                                      SvgPicture.string(
                                    _svg_hhl08s,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 563.0, 376.0, 50.0),
                          size: Size(376.0, 613.0),
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
                                pageBuilder: () => Dashboard(),
                              ),
                            ],
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 50.0),
                                  size: Size(376.0, 50.0),
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
                                  bounds:
                                      Rect.fromLTWH(112.0, 13.4, 214.0, 23.0),
                                  size: Size(376.0, 50.0),
                                  pinRight: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: Text(
                                    'www.hemashospitals.com',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      color: const Color(0xfff78002),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(82.5, 6.5, 1.0, 38.0),
                                  size: Size(376.0, 50.0),
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child: SvgPicture.string(
                                    _svg_rmff9w,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(28.0, 15.0, 22.0, 22.0),
                                  size: Size(376.0, 50.0),
                                  pinLeft: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child:
                                      // Adobe XD layer: 'ic_language_24px' (shape)
                                      SvgPicture.string(
                                    _svg_y06ha0,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 210.0),
                          size: Size(376.0, 613.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 210.0),
                                size: Size(376.0, 210.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 376.0, 210.0),
                                      size: Size(376.0, 210.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        child: Container(
                                          child: Text("Contact Form",
                                            style: TextStyle(fontWeight: FontWeight.bold,
                                                fontSize: 16
                                            ),
                                          ),
                                          padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: const Color(0xffffffff),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x29000000),
                                              offset: Offset(0, 5),
                                              blurRadius: 38,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          25.5, 44.0, 325.7, 35.0),
                                      size: Size(376.0, 210.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 325.7, 35.0),
                                            size: Size(325.7, 35.0),
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
                                                  EdgeInsets.only(left: 11, bottom: 12, top: 0, right: 11),
                                                  hintText: "Name",
                                                ),
                                                keyboardType: TextInputType.text,
                                                cursorColor: Colors.black12,
                                                // Only numbers can be entered
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(9.0),
                                                color: const Color(0xfff6f6f6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffd6d6d6)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                14.7, 9.0, 40.0, 17.0),
                                            size: Size(325.7, 35.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          25.5, 99.0, 325.7, 35.0),
                                      size: Size(376.0, 210.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 325.7, 35.0),
                                            size: Size(325.7, 35.0),
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
                                                  EdgeInsets.only(left: 11, bottom: 12, top: 0, right: 11),
                                                  hintText: "Message",
                                                ),
                                                keyboardType: TextInputType.text,
                                                cursorColor: Colors.black12,
                                                // Only numbers can be entered
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(9.0),
                                                color: const Color(0xfff6f6f6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xffd6d6d6)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                14.7, 9.0, 57.0, 17.0),
                                            size: Size(325.7, 35.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          89.0, 153.0, 200.0, 40.0),
                                      size: Size(376.0, 210.0),
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: new GestureDetector(
                                        onTap: () => showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog2(
                                            title2: "Your Contact Form Sent.",
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
                                          child: Stack(
                                            children: <Widget>[
                                              Pinned.fromSize(
                                                bounds: Rect.fromLTWH(
                                                    0.0, 0.0, 200.0, 40.0),
                                                size: Size(200.0, 40.0),
                                                pinLeft: true,
                                                pinRight: true,
                                                pinTop: true,
                                                pinBottom: true,
                                                child: SvgPicture.string(
                                                  _svg_dcicw3,
                                                  allowDrawingOutsideViewBox:
                                                  true,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Pinned.fromSize(
                                                bounds: Rect.fromLTWH(
                                                    80.0, 10.0, 38.0, 21.0),
                                                size: Size(200.0, 40.0),
                                                fixedWidth: true,
                                                fixedHeight: true,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          0.0, 0.0, 38.0, 21.0),
                                                      size: Size(38.0, 21.0),
                                                      pinLeft: true,
                                                      pinRight: true,
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      child: Text(
                                                        'Send',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 15,
                                                          color: const Color(
                                                              0xffffffff),
                                                          fontWeight:
                                                          FontWeight.w500,
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

const String _svg_ft0x0j =
    '<svg viewBox="23.0 464.7 20.0 20.0" ><path transform="translate(20.0, 461.67)" d="M 7.022222518920898 11.65555667877197 C 8.622221946716309 14.80000114440918 11.20000076293945 17.36666679382324 14.34444522857666 18.97777938842773 L 16.78888893127441 16.53333473205566 C 17.08889007568359 16.23333358764648 17.53333282470703 16.13333511352539 17.92222213745117 16.26666831970215 C 19.16666793823242 16.67778015136719 20.51111221313477 16.90000152587891 21.88888931274414 16.90000152587891 C 22.5 16.90000152587891 23 17.40000152587891 23 18.0111141204834 L 23 21.88888931274414 C 23 22.5 22.5 23 21.88888931274414 23 C 11.45555591583252 23 3.000000238418579 14.5444450378418 3.000000238418579 4.111111164093018 C 3.000000238418579 3.500000238418579 3.500000238418579 3.000000238418579 4.111111164093018 3.000000238418579 L 8.000000953674316 3.000000238418579 C 8.611111640930176 3.000000238418579 9.111111640930176 3.500000238418579 9.111111640930176 4.111111164093018 C 9.111111640930176 5.5 9.333333969116211 6.833333492279053 9.744444847106934 8.077777862548828 C 9.866666793823242 8.466667175292969 9.777777671813965 8.90000057220459 9.466667175292969 9.211112022399902 L 7.022222518920898 11.65555667877197 Z" fill="#f78002" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rmff9w =
    '<svg viewBox="75.5 454.5 1.0 38.0" ><path transform="translate(75.5, 454.5)" d="M 0 0 L 0 38" fill="none" stroke="#f78002" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hhl08s =
    '<svg viewBox="21.0 463.0 22.2 20.0" ><path transform="translate(19.0, 460.0)" d="M 20.88889122009277 8.555556297302246 L 5.333333492279053 8.555556297302246 C 3.488889217376709 8.555556297302246 2 10.0444450378418 2 11.88889026641846 L 2 18.55555534362793 L 6.44444465637207 18.55555534362793 L 6.44444465637207 23 L 19.77777862548828 23 L 19.77777862548828 18.55555534362793 L 24.22222518920898 18.55555534362793 L 24.22222518920898 11.88889026641846 C 24.22222518920898 10.0444450378418 22.73333549499512 8.555556297302246 20.88889122009277 8.555556297302246 Z M 17.55555725097656 20.77777862548828 L 8.666666984558105 20.77777862548828 L 8.666666984558105 15.22222328186035 L 17.55555725097656 15.22222328186035 L 17.55555725097656 20.77777862548828 Z M 20.88889122009277 13.00000095367432 C 20.27778053283691 13.00000095367432 19.77777862548828 12.50000095367432 19.77777862548828 11.88889026641846 C 19.77777862548828 11.27777862548828 20.27778053283691 10.77777862548828 20.88889122009277 10.77777862548828 C 21.50000190734863 10.77777862548828 22.00000190734863 11.27777862548828 22.00000190734863 11.88889026641846 C 22.00000190734863 12.50000095367432 21.50000190734863 13.00000095367432 20.88889122009277 13.00000095367432 Z M 19.77777862548828 3.000000238418579 L 6.44444465637207 3.000000238418579 L 6.44444465637207 7.44444465637207 L 19.77777862548828 7.44444465637207 L 19.77777862548828 3.000000238418579 Z" fill="#f78002" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y06ha0 =
    '<svg viewBox="21.0 463.0 22.0 22.0" ><path transform="translate(19.0, 461.0)" d="M 12.98900032043457 2 C 6.917000293731689 2 2 6.928000450134277 2 13.00000095367432 C 2 19.07200050354004 6.917000293731689 24 12.98900032043457 24 C 19.07200050354004 24 24 19.07200050354004 24 13.00000095367432 C 24 6.927999973297119 19.07200050354004 2 12.98900032043457 2 Z M 20.61199951171875 8.600000381469727 L 17.36700057983398 8.600000381469727 C 17.01499938964844 7.225000381469727 16.50900077819824 5.905000686645508 15.84899997711182 4.684000492095947 C 17.87299919128418 5.377000331878662 19.55599784851074 6.785000324249268 20.61199951171875 8.600000381469727 Z M 13.00000095367432 4.244000434875488 C 13.91300010681152 5.564000129699707 14.62800025939941 7.026999950408936 15.10100078582764 8.600000381469727 L 10.89900016784668 8.600000381469727 C 11.3720006942749 7.027000427246094 12.08700084686279 5.564000129699707 13.00000095367432 4.244000434875488 Z M 4.486000537872314 15.20000076293945 C 4.310000419616699 14.49600028991699 4.200000286102295 13.75899982452393 4.200000286102295 13.00000095367432 C 4.200000286102295 12.24100112915039 4.310000419616699 11.50400066375732 4.486000537872314 10.80000019073486 L 8.204000473022461 10.80000019073486 C 8.116001129150391 11.52600002288818 8.05000114440918 12.2519998550415 8.05000114440918 13.00000095367432 C 8.05000114440918 13.74800109863281 8.116001129150391 14.47400093078613 8.204000473022461 15.20000076293945 L 4.486000537872314 15.20000076293945 Z M 5.388000965118408 17.39999961853027 L 8.633001327514648 17.39999961853027 C 8.985000610351563 18.77499961853027 9.491001129150391 20.09500122070313 10.1510009765625 21.31599998474121 C 8.12700080871582 20.62299919128418 6.444001197814941 19.22599983215332 5.388001441955566 17.39999961853027 Z M 8.633001327514648 8.600000381469727 L 5.388000011444092 8.600000381469727 C 6.444000244140625 6.774000644683838 8.126999855041504 5.376999855041504 10.15100002288818 4.684000492095947 C 9.491001129150391 5.905000686645508 8.985000610351563 7.225000381469727 8.633000373840332 8.600000381469727 Z M 13.00000095367432 21.7559986114502 C 12.08700084686279 20.43599700927734 11.3720006942749 18.97299766540527 10.89900016784668 17.39999771118164 L 15.10100078582764 17.39999771118164 C 14.62800025939941 18.97299766540527 13.91300010681152 20.43599700927734 13.00000095367432 21.7559986114502 Z M 15.57400035858154 15.20000076293945 L 10.42600059509277 15.20000076293945 C 10.32699966430664 14.47400093078613 10.25 13.74800109863281 10.25 13.00000095367432 C 10.25 12.2519998550415 10.32699966430664 11.51500034332275 10.42600059509277 10.80000019073486 L 15.57400035858154 10.80000019073486 C 15.67300128936768 11.51500034332275 15.75000095367432 12.2519998550415 15.75000095367432 13.00000095367432 C 15.75000095367432 13.74800109863281 15.67300128936768 14.47400093078613 15.57400035858154 15.20000076293945 Z M 15.84899997711182 21.31599998474121 C 16.50900077819824 20.09499931335449 17.01499938964844 18.77499961853027 17.36700057983398 17.39999961853027 L 20.61199951171875 17.39999961853027 C 19.55600166320801 19.21500015258789 17.87299919128418 20.62299919128418 15.84899997711182 21.31599998474121 Z M 17.79599952697754 15.20000076293945 C 17.88400077819824 14.47400093078613 17.94999885559082 13.74800109863281 17.94999885559082 13.00000095367432 C 17.94999885559082 12.2519998550415 17.88400077819824 11.52600002288818 17.79599952697754 10.80000019073486 L 21.51400184631348 10.80000019073486 C 21.69000053405762 11.50400066375732 21.80000114440918 12.24100017547607 21.80000114440918 13.00000095367432 C 21.80000114440918 13.75900077819824 21.69000053405762 14.49600028991699 21.51400184631348 15.20000076293945 L 17.79599952697754 15.20000076293945 Z" fill="#f78002" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dcicw3 =
    '<svg viewBox="94.0 489.0 200.0 40.0" ><defs><linearGradient id="gradient" x1="0.938706" y1="0.079377" x2="0.154315" y2="1.0"><stop offset="0.0" stop-color="#ffefa405"  /><stop offset="1.0" stop-color="#ffff6000"  /></linearGradient></defs><path transform="translate(94.0, 489.0)" d="M 20 0 L 180 0 C 191.0457000732422 0 200 8.954304695129395 200 20 C 200 31.04569625854492 191.0457000732422 40 180 40 L 20 40 C 8.954304695129395 40 0 31.04569625854492 0 20 C 0 8.954304695129395 8.954304695129395 0 20 0 Z" fill="url(#gradient)" stroke="#ececec" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
