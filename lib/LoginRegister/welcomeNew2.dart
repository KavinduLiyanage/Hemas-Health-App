import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import 'numberEnter.dart';

class WelcomeNew2 extends StatelessWidget {
  WelcomeNew2({
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
            offset: Offset(57.0, 470.0),
            child: SizedBox(
              width: 300.0,
              height: 216.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 300.0, 216.0),
                    size: Size(300.0, 216.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 300.0, 216.0),
                          size: Size(300.0, 216.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 300.0, 216.0),
                                size: Size(300.0, 216.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 300.0, 216.0),
                                      size: Size(300.0, 216.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 166.0, 300.0, 50.0),
                                            size: Size(300.0, 216.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 300.0, 50.0),
                                                  size: Size(300.0, 50.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      color: const Color(
                                                          0xffffffff),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xffececec)),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color(
                                                              0x0d000000),
                                                          offset: Offset(0, 2),
                                                          blurRadius: 5,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      102.0, 15.0, 84.0, 22.0),
                                                  size: Size(300.0, 50.0),
                                                  fixedWidth: true,
                                                  fixedHeight: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            30.0,
                                                            1.0,
                                                            54.0,
                                                            21.0),
                                                        size: Size(84.0, 22.0),
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        fixedWidth: true,
                                                        child: Text(
                                                          'Google',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 15,
                                                            color: const Color(
                                                                0xff3f4079),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            20.0,
                                                            20.0),
                                                        size: Size(84.0, 22.0),
                                                        pinLeft: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        fixedWidth: true,
                                                        child:
                                                            // Adobe XD layer: 'google-fill' (group)
                                                            Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      20.0,
                                                                      20.0),
                                                              size: Size(
                                                                  20.0, 20.0),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_lwllnt,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      1.7,
                                                                      1.7,
                                                                      16.3,
                                                                      16.7),
                                                              size: Size(
                                                                  20.0, 20.0),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_dvtqmg,
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
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 83.0, 300.0, 50.0),
                                            size: Size(300.0, 216.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 300.0, 50.0),
                                                  size: Size(300.0, 50.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      color: const Color(
                                                          0xffffffff),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xffececec)),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color(
                                                              0x0d000000),
                                                          offset: Offset(0, 2),
                                                          blurRadius: 5,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      95.8, 15.0, 101.2, 22.5),
                                                  size: Size(300.0, 50.0),
                                                  fixedWidth: true,
                                                  fixedHeight: true,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            27.2,
                                                            1.5,
                                                            74.0,
                                                            21.0),
                                                        size: Size(101.2, 22.5),
                                                        pinRight: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        fixedWidth: true,
                                                        child: Text(
                                                          'Facebook',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 15,
                                                            color: const Color(
                                                                0xff3f4079),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                      Pinned.fromSize(
                                                        bounds: Rect.fromLTWH(
                                                            0.0,
                                                            0.0,
                                                            20.5,
                                                            20.5),
                                                        size: Size(101.2, 22.5),
                                                        pinLeft: true,
                                                        pinTop: true,
                                                        pinBottom: true,
                                                        fixedWidth: true,
                                                        child:
                                                            // Adobe XD layer: 'facebook-fill' (group)
                                                            Stack(
                                                          children: <Widget>[
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      0.0,
                                                                      0.0,
                                                                      20.5,
                                                                      20.5),
                                                              size: Size(
                                                                  20.5, 20.5),
                                                              pinLeft: true,
                                                              pinRight: true,
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_xuz0bb,
                                                                allowDrawingOutsideViewBox:
                                                                    true,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                            Pinned.fromSize(
                                                              bounds:
                                                                  Rect.fromLTWH(
                                                                      6.0,
                                                                      1.7,
                                                                      9.0,
                                                                      17.1),
                                                              size: Size(
                                                                  20.5, 20.5),
                                                              pinTop: true,
                                                              pinBottom: true,
                                                              fixedWidth: true,
                                                              child: SvgPicture
                                                                  .string(
                                                                _svg_kuhx9g,
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
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 300.0, 50.0),
                                            size: Size(300.0, 216.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            fixedHeight: true,
                                            child: PageLink(
                                              links: [
                                                PageLinkInfo(
                                                  transition:
                                                      LinkTransition.Fade,
                                                  ease: Curves.easeOut,
                                                  duration: 0.3,
                                                  pageBuilder: () =>
                                                      NumberEnter(),
                                                ),
                                              ],
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 0.0, 300.0, 50.0),
                                                    size: Size(300.0, 50.0),
                                                    pinLeft: true,
                                                    pinRight: true,
                                                    pinTop: true,
                                                    pinBottom: true,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25.0),
                                                        color: const Color(
                                                            0xffffffff),
                                                        border: Border.all(
                                                            width: 1.0,
                                                            color: const Color(
                                                                0xffececec)),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: const Color(
                                                                0x0d000000),
                                                            offset:
                                                                Offset(0, 2),
                                                            blurRadius: 5,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(76.0,
                                                        15.0, 144.0, 21.5),
                                                    size: Size(300.0, 50.0),
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child: Stack(
                                                      children: <Widget>[
                                                        Pinned.fromSize(
                                                          bounds: Rect.fromLTWH(
                                                              28.0,
                                                              0.5,
                                                              116.0,
                                                              21.0),
                                                          size:
                                                              Size(144.0, 21.5),
                                                          pinRight: true,
                                                          pinTop: true,
                                                          pinBottom: true,
                                                          fixedWidth: true,
                                                          child: Text(
                                                            'Mobile Number',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15,
                                                              color: const Color(
                                                                  0xff3f4079),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                        Pinned.fromSize(
                                                          bounds: Rect.fromLTWH(
                                                              0.0,
                                                              0.0,
                                                              20.0,
                                                              20.0),
                                                          size:
                                                              Size(144.0, 21.5),
                                                          pinLeft: true,
                                                          pinTop: true,
                                                          pinBottom: true,
                                                          fixedWidth: true,
                                                          child:
                                                              // Adobe XD layer: 'cellphone-line' (group)
                                                              Stack(
                                                            children: <Widget>[
                                                              Pinned.fromSize(
                                                                bounds: Rect
                                                                    .fromLTWH(
                                                                        0.0,
                                                                        0.0,
                                                                        20.0,
                                                                        20.0),
                                                                size: Size(
                                                                    20.0, 20.0),
                                                                pinLeft: true,
                                                                pinRight: true,
                                                                pinTop: true,
                                                                pinBottom: true,
                                                                child:
                                                                    SvgPicture
                                                                        .string(
                                                                  _svg_lwllnt,
                                                                  allowDrawingOutsideViewBox:
                                                                      true,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                              Pinned.fromSize(
                                                                bounds: Rect
                                                                    .fromLTWH(
                                                                        6.2,
                                                                        0.0,
                                                                        11.7,
                                                                        18.3),
                                                                size: Size(
                                                                    20.0, 20.0),
                                                                pinRight: true,
                                                                pinTop: true,
                                                                pinBottom: true,
                                                                fixedWidth:
                                                                    true,
                                                                child:
                                                                    SvgPicture
                                                                        .string(
                                                                  _svg_5fu52h,
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
          Transform.translate(
            offset: Offset(120.0, 160.0),
            child:
                // Adobe XD layer: 'Logo (1)_Crop' (shape)
                Container(
              width: 175.0,
              height: 181.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logonew.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_lwllnt =
    '<svg viewBox="0.0 0.0 20.0 20.0" ><path  d="M 0 0 L 20 0 L 20 20 L 0 20 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dvtqmg =
    '<svg viewBox="1.7 1.7 16.3 16.7" ><path transform="translate(-0.33, -0.33)" d="M 2.886666297912598 6.591666698455811 C 4.300710201263428 3.775922060012817 7.182473182678223 1.999008178710938 10.33333396911621 2.000000953674316 C 12.5791654586792 2 14.46583271026611 2.825000047683716 15.90833282470703 4.170833110809326 L 13.51916599273682 6.56083345413208 C 12.65499973297119 5.735000133514404 11.55666637420654 5.314167022705078 10.33333301544189 5.314167022705078 C 8.162500381469727 5.314167022705078 6.324999809265137 6.780833721160889 5.670833110809326 8.75 C 5.504166603088379 9.25 5.40916633605957 9.783332824707031 5.40916633605957 10.33333301544189 C 5.40916633605957 10.88333225250244 5.504166126251221 11.41666603088379 5.670833110809326 11.91666603088379 C 6.325832843780518 13.8866662979126 8.162500381469727 15.35249805450439 10.33333301544189 15.35249805450439 C 11.45416641235352 15.35249805450439 12.40833282470703 15.05666542053223 13.15499877929688 14.55666542053223 C 14.02972316741943 13.98074722290039 14.6307258605957 13.07201671600342 14.81833267211914 12.04166507720947 L 10.33333301544189 12.04166507720947 L 10.33333301544189 8.818331718444824 L 18.18166351318359 8.818331718444824 C 18.27999877929688 9.363332748413086 18.33333206176758 9.931665420532227 18.33333206176758 10.52249908447266 C 18.33333206176758 13.06083202362061 17.42499923706055 15.19749927520752 15.84833145141602 16.64749908447266 C 14.47000026702881 17.92083358764648 12.58333301544189 18.66666603088379 10.33333301544189 18.66666603088379 C 5.730197906494141 18.66851043701172 1.998159050941467 14.93646907806396 1.999999642372131 10.33333396911621 C 1.999999642372131 8.988332748413086 2.321666240692139 7.716666221618652 2.886666297912598 6.591666698455811 Z" fill="#fe5f55" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xuz0bb =
    '<svg viewBox="0.0 0.0 20.5 20.5" ><path  d="M 0 0 L 20.46826171875 0 L 20.46826171875 20.46826171875 L 0 20.46826171875 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kuhx9g =
    '<svg viewBox="6.0 1.7 9.0 17.1" ><path transform="translate(-1.03, -0.29)" d="M 12.96990966796875 11.80770874023438 L 15.10202026367188 11.80770874023438 L 15.95486450195313 8.396331787109375 L 12.96990966796875 8.396331787109375 L 12.96990966796875 6.690643310546875 C 12.96990966796875 5.812213897705078 12.96990966796875 4.984954833984375 14.67559814453125 4.984954833984375 L 15.95486450195313 4.984954833984375 L 15.95486450195313 2.11939811706543 C 15.67683696746826 2.082726001739502 14.62698554992676 2 13.51828861236572 2 C 11.2028169631958 2 9.55853271484375 3.41316294670105 9.55853271484375 6.008367538452148 L 9.55853271484375 8.396331787109375 L 7 8.396331787109375 L 7 11.80770874023438 L 9.55853271484375 11.80770874023438 L 9.55853271484375 19.056884765625 L 12.96990966796875 19.056884765625 L 12.96990966796875 11.80770874023438 Z" fill="#3a91f7" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5fu52h =
    '<svg viewBox="6.2 0.0 11.7 18.3" ><path transform="translate(1.17, 0.0)" d="M 6.666666507720947 1.666666626930237 L 15.83333301544189 1.666666626930237 C 16.29356956481934 1.666666626930237 16.66666603088379 2.039762735366821 16.66666603088379 2.5 L 16.66666603088379 17.5 C 16.66666603088379 17.96023559570313 16.29356956481934 18.33333206176758 15.83333301544189 18.33333206176758 L 5.833333492279053 18.33333206176758 C 5.373095989227295 18.33333206176758 5 17.96023559570313 5 17.5 L 5 0 L 6.666666507720947 0 L 6.666666507720947 1.666666626930237 Z M 6.666666507720947 7.5 L 14.99999904632568 7.5 L 14.99999904632568 3.333333253860474 L 6.666666507720947 3.333333253860474 L 6.666666507720947 7.5 Z M 6.666666507720947 9.166666030883789 L 6.666666507720947 16.66666603088379 L 14.99999904632568 16.66666603088379 L 14.99999904632568 9.166666030883789 L 6.666666507720947 9.166666030883789 Z" fill="#6e78f7" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
