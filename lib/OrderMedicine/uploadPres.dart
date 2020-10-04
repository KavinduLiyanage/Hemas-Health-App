import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hemashealth/orderMedicine.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';

import '../constants.dart';

class UploadPres extends StatelessWidget {
  UploadPres({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "Order Medicine",
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(fontWeight: FontWeight.w500,  fontSize: 20),
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
                  ]
              ),
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
              borderRadius: BorderRadius.all(Radius.circular(20))
              ,
            ),
          ),
          Transform.translate(
            offset: Offset(78.0, 195.0),
            child: SizedBox(
              width: 258.0,
              height: 424.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 258.0, 424.0),
                    size: Size(258.0, 424.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(26.0, 0.0, 206.0, 155.0),
                          size: Size(258.0, 424.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Text(
                            'Upload \nYour\nPrescription',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 35,
                              color: const Color(0xff3d3d3d),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 343.0, 258.0, 81.0),
                          size: Size(258.0, 424.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.7, 87.0, 80.3),
                                size: Size(258.0, 81.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: PageLink(
                                  links: [
                                    PageLinkInfo(
                                      transition: LinkTransition.Fade,
                                      ease: Curves.easeOut,
                                      duration: 0.3,
                                      pageBuilder: () => OrderMedicine(),
                                    ),
                                  ],
                                  child: Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(
                                            18.0, 0.0, 50.0, 50.0),
                                        size: Size(87.0, 80.3),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        fixedHeight: true,
                                        child:
                                            // Adobe XD layer: 'ic_unarchive_24px' (shape)
                                            SvgPicture.string(
                                          _svg_u3uz4b,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(
                                            0.0, 60.3, 87.0, 20.0),
                                        size: Size(87.0, 80.3),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinBottom: true,
                                        fixedHeight: true,
                                        child: Text(
                                          'From Device',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                            color: const Color(0xff3d3d3d),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(171.0, 0.0, 87.0, 81.0),
                                size: Size(258.0, 81.0),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: PageLink(
                                  links: [
                                    PageLinkInfo(
                                      transition: LinkTransition.Fade,
                                      ease: Curves.easeOut,
                                      duration: 0.3,
                                      pageBuilder: () => OrderMedicine(),
                                    ),
                                  ],
                                  child: Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(
                                            14.0, 0.0, 55.0, 50.2),
                                        size: Size(87.0, 81.0),
                                        pinTop: true,
                                        fixedWidth: true,
                                        fixedHeight: true,
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 0.0, 55.0, 50.2),
                                              size: Size(55.0, 50.2),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                                  // Adobe XD layer: 'ic_add_a_photo_24px' (shape)
                                                  SvgPicture.string(
                                                _svg_s6q2g2,
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
                                            0.0, 61.0, 87.0, 20.0),
                                        size: Size(87.0, 81.0),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinBottom: true,
                                        fixedHeight: true,
                                        child: Text(
                                          'Take a Snap',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                            color: const Color(0xff3d3d3d),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(63.0, 210.0, 132.0, 62.0),
                          size: Size(258.0, 424.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Images must be \nJPG or PNG format \n(max 5 MB)',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: const Color(0xff3d3d3d),
                            ),
                            textAlign: TextAlign.center,
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

const String _svg_u3uz4b =
    '<svg viewBox="84.0 504.7 50.0 50.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ffefa405"  /><stop offset="1.0" stop-color="#ffff6000"  /></linearGradient></defs><path transform="translate(81.0, 501.69)" d="M 51.75000381469727 9.166666984558105 L 47.88889312744141 4.5 C 47.11111450195313 3.583333730697632 45.97222518920898 3.000000715255737 44.66666793823242 3.000000715255737 L 11.33333492279053 3.000000715255737 C 10.0277795791626 3.000000715255737 8.888888359069824 3.583333730697632 8.138888359069824 4.527777671813965 L 4.277777671813965 9.166666984558105 C 3.472222566604614 10.13889026641846 3.000000715255737 11.36111259460449 3.000000715255737 12.72222328186035 L 3.000000715255737 47.4444465637207 C 3.000000715255737 50.50000381469727 5.472222328186035 53.00000381469727 8.55555534362793 53.00000381469727 L 47.4444465637207 53.00000381469727 C 50.50000381469727 53.00000381469727 53.00000381469727 50.50000381469727 53.00000381469727 47.4444465637207 L 53.00000381469727 12.72222328186035 C 53.00000381469727 11.36111259460449 52.52778244018555 10.13889026641846 51.75000381469727 9.166668891906738 Z M 28.00000381469727 21.05555534362793 L 43.27777862548828 36.33333587646484 L 33.55555725097656 36.33333587646484 L 33.55555725097656 41.88888931274414 L 22.44444465637207 41.88888931274414 L 22.44444465637207 36.33333587646484 L 12.72222328186035 36.33333587646484 L 28.00000381469727 21.05555534362793 Z M 8.888888359069824 8.55555534362793 L 11.16666793823242 5.777778625488281 L 44.5 5.777778625488281 L 47.08333969116211 8.55555534362793 L 8.888888359069824 8.55555534362793 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s6q2g2 =
    '<svg viewBox="251.0 568.0 55.0 50.2" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ffefa405"  /><stop offset="1.0" stop-color="#ffff6000"  /></linearGradient></defs><path transform="translate(251.0, 567.0)" d="M 7.173912048339844 8.173913955688477 L 7.173912048339844 0.9999999403953552 L 11.95652103424072 0.9999999403953552 L 11.95652103424072 8.173913955688477 L 19.13043403625488 8.173913955688477 L 19.13043403625488 12.95652294158936 L 11.95652103424072 12.95652294158936 L 11.95652103424072 20.13043403625488 L 7.173912048339844 20.13043403625488 L 7.173912048339844 12.95652294158936 L 0 12.95652294158936 L 0 8.173913955688477 L 7.173912048339844 8.173913955688477 Z M 14.34782409667969 22.5217399597168 L 14.34782409667969 15.34782600402832 L 21.52173805236816 15.34782600402832 L 21.52173805236816 8.173913955688477 L 38.26086807250977 8.173913955688477 L 42.63695526123047 12.95652294158936 L 50.21738433837891 12.95652294158936 C 52.84782409667969 12.95652294158936 55 15.10869693756104 55 17.73913192749023 L 55 46.43478012084961 C 55 49.06521224975586 52.84782409667969 51.21738815307617 50.21738433837891 51.21738815307617 L 11.95652103424072 51.21738815307617 C 9.32608699798584 51.21738815307617 7.173912048339844 49.06521224975586 7.173912048339844 46.43478012084961 L 7.173912048339844 22.5217399597168 L 14.34782409667969 22.5217399597168 Z M 31.08695793151855 44.04347610473633 C 37.68695831298828 44.04347610473633 43.04347610473633 38.68695068359375 43.04347610473633 32.08694458007813 C 43.04347610473633 25.48695373535156 37.68695831298828 20.13043403625488 31.08695793151855 20.13043403625488 C 24.4869556427002 20.13043403625488 19.13043403625488 25.48695373535156 19.13043403625488 32.08694458007813 C 19.13043403625488 38.68695068359375 24.4869556427002 44.04347610473633 31.08695793151855 44.04347610473633 Z M 23.43478202819824 32.08694458007813 C 23.43478202819824 36.31956481933594 26.85434722900391 39.73912048339844 31.08695793151855 39.73912048339844 C 35.31956100463867 39.73912048339844 38.73912811279297 36.31956481933594 38.73912811279297 32.08695220947266 C 38.73912811279297 27.8543529510498 35.31956481933594 24.43478393554688 31.08695793151855 24.43478393554688 C 26.85434913635254 24.43478393554688 23.43478393554688 27.8543529510498 23.43478393554688 32.08695220947266 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
