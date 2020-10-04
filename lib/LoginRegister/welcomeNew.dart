import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:hemashealth/LoginRegister/welcomeNew2.dart';
import '../constants.dart';

class WelcomeNew extends StatelessWidget {
  final VoidCallback g;
  WelcomeNew({
    Key key,
    this.g,
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
            offset: Offset(91.8, 469.0),
            child: SizedBox(
              width: 230.0,
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 40,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                  height: 0.4,
                ),
                textAlign: TextAlign.center,
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
          Transform.translate(
            offset: Offset(57.0, 652.0),
            child: GestureDetector(
              onTap: () => g?.call(),
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => WelcomeNew2(),
                  ),
                ],
                child: SizedBox(
                  width: 300.0,
                  height: 50.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 300.0, 50.0),
                        size: Size(300.0, 50.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: const Color(0xffffffff),
                            border: Border.all(
                                width: 1.0, color: const Color(0xffececec)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x0d000000),
                                offset: Offset(0, 2),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(98.0, 14.0, 104.0, 25.0),
                        size: Size(300.0, 50.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 104.0, 25.0),
                              size: Size(104.0, 25.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: const Color(0xff3f4079),
                                  fontWeight: FontWeight.w500,
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
            ),
          ),
        ],
      ),
    );
  }
}
