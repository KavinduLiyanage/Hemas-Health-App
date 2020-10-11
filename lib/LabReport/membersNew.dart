import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hemashealth/LabReport/memberUpdate.dart';
import 'package:hemashealth/LabReport/reportList.dart';
import 'package:hemashealth/dashboard.dart';
import 'package:hemashealth/widgets/alert_dialog.dart';
import 'package:hemashealth/widgets/alert_dialog2.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';
import '../constants.dart';
import 'memberAdd.dart';
import 'membersCurrent.dart';

class MembersNew extends StatelessWidget {
  MembersNew({
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
        leading: IconButton(
          tooltip: 'Previous choice',
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          },
        ),
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
      //backgroundColor: const Color(0xffffffff),
      floatingActionButton: Align(
          child: Container(
              margin: EdgeInsets.fromLTRB(0, 0,0, 10),
              width: 280.0,
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MemberAdd()),
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
                      'Add new member',
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
            child: Container(
              child: Text("Members",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
              padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
            ),
          ),
          Transform.translate(
            offset: Offset(40.0, 175.0),
            child: SizedBox(
              width: 335.0,
              height: 295.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 75.0, 335.0, 220.0),
                    size: Size(335.0, 295.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 120.0, 335.0, 100.0),
                          size: Size(335.0, 220.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 335.0, 100.0),
                                size: Size(335.0, 100.0),
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
                                bounds: Rect.fromLTWH(28.0, 15.0, 272.0, 65.3),
                                size: Size(335.0, 100.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(92.0, 8.0, 230.0, 18.0),
                                      size: Size(272.0, 65.3),
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Ridmi Ekanayaka',
                                        style: TextStyle(
                                          fontFamily: 'Muli',
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
                                      bounds:
                                          Rect.fromLTWH(0.0, 5.3, 60.0, 60.0),
                                      size: Size(272.0, 65.3),
                                      pinLeft: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child:
                                          // Adobe XD layer: 'Content/Image/Profi…' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 60.0, 60.0),
                                            size: Size(60.0, 60.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child:
                                                // Adobe XD layer: '🖼 profile-image' (group)
                                                Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 60.0, 60.0),
                                                  size: Size(60.0, 60.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: '🖼 profile-image' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  9999.0,
                                                                  9999.0)),
                                                      image: DecorationImage(
                                                        image: const AssetImage(
                                                            'assets/images/profile3.png'),
                                                        fit: BoxFit.cover,
                                                      ),
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
                                          82.0, 25.0, 190.0, 40.0),
                                      size: Size(272.0, 65.3),
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                70.0, 0.0, 50.0, 40.0),
                                            size: Size(190.0, 40.0),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: PageLink(
                                              links: [
                                                PageLinkInfo(
                                                  transition:
                                                      LinkTransition.Fade,
                                                  ease: Curves.easeOut,
                                                  duration: 0.3,
                                                  pageBuilder: () =>
                                                      MemberUpdate(),
                                                ),
                                              ],
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 0.0, 50.0, 40.0),
                                                    size: Size(50.0, 40.0),
                                                    pinLeft: true,
                                                    pinRight: true,
                                                    pinTop: true,
                                                    pinBottom: true,
                                                    child: SvgPicture.string(
                                                      _svg_xtsvkw,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        15.9, 21.9, 18.0, 15.0),
                                                    size: Size(50.0, 40.0),
                                                    pinBottom: true,
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child: Text(
                                                      'Edit',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
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
                                                        18.0, 6.0, 15.0, 15.0),
                                                    size: Size(50.0, 40.0),
                                                    pinTop: true,
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                        // Adobe XD layer: 'ic_create_24px' (shape)
                                                        SvgPicture.string(
                                                      _svg_brvrlz,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 50.0, 40.0),
                                            size: Size(190.0, 40.0),
                                            pinLeft: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: PageLink(
                                              links: [
                                                PageLinkInfo(
                                                  transition:
                                                      LinkTransition.Fade,
                                                  ease: Curves.easeOut,
                                                  duration: 0.3,
                                                  pageBuilder: () =>
                                                      ReportList(memberName : 'Ridmi Ekanayaka'),
                                                ),
                                              ],
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 0.0, 50.0, 40.0),
                                                    size: Size(50.0, 40.0),
                                                    pinLeft: true,
                                                    pinRight: true,
                                                    pinTop: true,
                                                    pinBottom: true,
                                                    child: SvgPicture.string(
                                                      _svg_xtsvkw,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        9.9, 21.9, 34.0, 15.0),
                                                    size: Size(50.0, 40.0),
                                                    pinBottom: true,
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child: Text(
                                                      'Details',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
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
                                                        16.0, 7.0, 17.0, 13.2),
                                                    size: Size(50.0, 40.0),
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                        // Adobe XD layer: 'ic_reorder_24px' (shape)
                                                        SvgPicture.string(
                                                      _svg_ggi21t,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
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
                                                title2: "Member Profile Deleted.",
                                                press: () {
                                                  Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(builder: (context) {
                                                      return MembersCurrent();
                                                    }),
                                                  );
                                                },
                                              ),
                                            ),
                                              child: Pinned.fromSize(
                                                bounds: Rect.fromLTWH(
                                                    140.0, 0.0, 50.0, 40.0),
                                                size: Size(190.0, 40.0),
                                                pinRight: true,
                                                pinTop: true,
                                                pinBottom: true,
                                                fixedWidth: true,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          0.0, 0.0, 50.0, 40.0),
                                                      size: Size(50.0, 40.0),
                                                      pinLeft: true,
                                                      pinRight: true,
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      child: SvgPicture.string(
                                                        _svg_3jhtir,
                                                        allowDrawingOutsideViewBox:
                                                        true,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          11.1, 21.9, 32.0, 15.0),
                                                      size: Size(50.0, 40.0),
                                                      pinBottom: true,
                                                      fixedWidth: true,
                                                      fixedHeight: true,
                                                      child: Text(
                                                        'Delete',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
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
                                                          19.0, 6.0, 12.4, 16.0),
                                                      size: Size(50.0, 40.0),
                                                      pinTop: true,
                                                      fixedWidth: true,
                                                      fixedHeight: true,
                                                      child:
                                                      // Adobe XD layer: 'ic_delete_forever_2…' (shape)
                                                      SvgPicture.string(
                                                        _svg_vkacvh,
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 335.0, 100.0),
                          size: Size(335.0, 220.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 335.0, 100.0),
                                size: Size(335.0, 100.0),
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
                                bounds: Rect.fromLTWH(30.0, 15.0, 270.0, 65.0),
                                size: Size(335.0, 100.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(93.0, 8.0, 200.0, 18.0),
                                      size: Size(270.0, 65.0),
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Nirma De Silva',
                                        style: TextStyle(
                                          fontFamily: 'Muli',
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
                                      bounds:
                                          Rect.fromLTWH(0.0, 4.0, 61.0, 61.0),
                                      size: Size(270.0, 65.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          image: DecorationImage(
                                            image: const AssetImage(
                                                'assets/images/profile2.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          80.0, 25.0, 190.0, 40.0),
                                      size: Size(270.0, 65.0),
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                70.0, 0.0, 50.0, 40.0),
                                            size: Size(190.0, 40.0),
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: PageLink(
                                              links: [
                                                PageLinkInfo(
                                                  transition:
                                                      LinkTransition.Fade,
                                                  ease: Curves.easeOut,
                                                  duration: 0.3,
                                                  pageBuilder: () =>
                                                      MemberUpdate(),
                                                ),
                                              ],
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 0.0, 50.0, 40.0),
                                                    size: Size(50.0, 40.0),
                                                    pinLeft: true,
                                                    pinRight: true,
                                                    pinTop: true,
                                                    pinBottom: true,
                                                    child: SvgPicture.string(
                                                      _svg_xtsvkw,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        15.9, 21.9, 18.0, 15.0),
                                                    size: Size(50.0, 40.0),
                                                    pinBottom: true,
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child: Text(
                                                      'Edit',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
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
                                                        18.0, 6.0, 15.0, 15.0),
                                                    size: Size(50.0, 40.0),
                                                    pinTop: true,
                                                    fixedWidth: true,
                                                    fixedHeight: true,
                                                    child:
                                                        // Adobe XD layer: 'ic_create_24px' (shape)
                                                        SvgPicture.string(
                                                      _svg_brvrlz,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 50.0, 40.0),
                                            size: Size(190.0, 40.0),
                                            pinLeft: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: PageLink(
                                              links: [
                                                PageLinkInfo(
                                                  transition:
                                                      LinkTransition.Fade,
                                                  ease: Curves.easeOut,
                                                  duration: 0.3,
                                                  pageBuilder: () =>
                                                      ReportList(memberName : 'Nirma De Silva'),
                                                ),
                                              ],
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 0.0, 50.0, 40.0),
                                                    size: Size(50.0, 40.0),
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
                                                              50.0,
                                                              40.0),
                                                          size:
                                                              Size(50.0, 40.0),
                                                          pinLeft: true,
                                                          pinRight: true,
                                                          pinTop: true,
                                                          pinBottom: true,
                                                          child:
                                                              SvgPicture.string(
                                                            _svg_w8i1y8,
                                                            allowDrawingOutsideViewBox:
                                                                true,
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                        Pinned.fromSize(
                                                          bounds: Rect.fromLTWH(
                                                              9.9,
                                                              21.9,
                                                              34.0,
                                                              15.0),
                                                          size:
                                                              Size(50.0, 40.0),
                                                          pinBottom: true,
                                                          fixedWidth: true,
                                                          fixedHeight: true,
                                                          child: Text(
                                                            'Details',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 10,
                                                              color: const Color(
                                                                  0xff000000),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            textAlign:
                                                                TextAlign.left,
                                                          ),
                                                        ),
                                                        Pinned.fromSize(
                                                          bounds: Rect.fromLTWH(
                                                              16.0,
                                                              7.0,
                                                              17.0,
                                                              13.2),
                                                          size:
                                                              Size(50.0, 40.0),
                                                          fixedWidth: true,
                                                          fixedHeight: true,
                                                          child:
                                                              // Adobe XD layer: 'ic_reorder_24px' (shape)
                                                              SvgPicture.string(
                                                            _svg_1vw912,
                                                            allowDrawingOutsideViewBox:
                                                                true,
                                                            fit: BoxFit.fill,
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
                                                title:
                                                    "Member Profile Deleted.",
                                              ),
                                            ),
                                            child: Pinned.fromSize(
                                                bounds: Rect.fromLTWH(
                                                    140.0, 0.0, 50.0, 40.0),
                                                size: Size(190.0, 40.0),
                                                pinRight: true,
                                                pinTop: true,
                                                pinBottom: true,
                                                fixedWidth: true,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          0.0, 0.0, 50.0, 40.0),
                                                      size: Size(50.0, 40.0),
                                                      pinLeft: true,
                                                      pinRight: true,
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      child: SvgPicture.string(
                                                        _svg_3jhtir,
                                                        allowDrawingOutsideViewBox:
                                                        true,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          11.1, 21.9, 32.0, 15.0),
                                                      size: Size(50.0, 40.0),
                                                      pinBottom: true,
                                                      fixedWidth: true,
                                                      fixedHeight: true,
                                                      child: Text(
                                                        'Delete',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
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
                                                          19.0, 6.0, 12.4, 16.0),
                                                      size: Size(50.0, 40.0),
                                                      pinTop: true,
                                                      fixedWidth: true,
                                                      fixedHeight: true,
                                                      child:
                                                      // Adobe XD layer: 'ic_delete_forever_2…' (shape)
                                                      SvgPicture.string(
                                                        _svg_vkacvh,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.0, 0.0, 200.0, 40.0),
                    size: Size(335.0, 295.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 200.0, 40.0),
                          size: Size(200.0, 40.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 200.0, 40.0),
                                size: Size(200.0, 40.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 200.0, 40.0),
                                      size: Size(200.0, 40.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                          color: const Color(0xffe7e7e7),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(47.5, 12.4, 150.0, 16.0),
                                      size: Size(200.0, 40.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
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
                                          EdgeInsets.only(left: -5, bottom: 12, top: 0, right: 11),
                                          hintText: "Search member",
                                        ),
                                        keyboardType: TextInputType.text,
                                        cursorColor: Colors.black12,
                                        inputFormatters: <TextInputFormatter>[
                                          LengthLimitingTextInputFormatter(12),
                                        ],
                                        // Only numbers can be entered
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(18.0, 13.0, 15.0, 15.0),
                                      size: Size(200.0, 40.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'ic_search_24px' (shape)
                                          SvgPicture.string(
                                        _svg_lynv7l,
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
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(215.0, 0.0, 120.0, 40.0),
                    size: Size(335.0, 295.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 120.0, 40.0),
                          size: Size(120.0, 40.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
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
                          bounds: Rect.fromLTWH(34.0, 10.7, 52.0, 21.0),
                          size: Size(120.0, 40.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Search',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: const Color(0xffffffff),
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
        ],
      ),
    );
  }
}

const String _svg_xtsvkw =
    '<svg viewBox="385.0 -40.7 50.0 40.0" ><path transform="translate(385.0, -40.7)" d="M 6.386860370635986 0 L 43.61313629150391 0 C 47.1405029296875 0 50 8.954304695129395 50 20 C 50 31.04569244384766 47.1405029296875 40 43.61313629150391 40 L 6.386860370635986 40 C 2.859495162963867 40 0 31.04569244384766 0 20 C 0 8.954304695129395 2.859495162963867 0 6.386860370635986 0 Z" fill="#f78002" fill-opacity="0.0" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_brvrlz =
    '<svg viewBox="403.0 -34.7 15.0 15.0" ><path transform="translate(400.0, -37.7)" d="M 3 14.87293529510498 L 3 17.99750137329102 L 6.124566555023193 17.99750137329102 L 15.33995342254639 8.782113075256348 L 12.21538639068604 5.657546997070313 L 3 14.87293529510498 Z M 17.75628471374512 6.365782737731934 C 18.08123779296875 6.040827751159668 18.08123779296875 5.515900611877441 17.75628471374512 5.190945625305176 L 15.80655574798584 3.24121618270874 C 15.48160076141357 2.916261196136475 14.95667171478271 2.916261196136475 14.63171768188477 3.24121618270874 L 13.10692882537842 4.766005039215088 L 16.23149681091309 7.890571117401123 L 17.75628471374512 6.365783214569092 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ggi21t =
    '<svg viewBox="401.0 -33.7 17.0 13.2" ><path transform="translate(398.0, -38.7)" d="M 3 14.44444370269775 L 19.99999809265137 14.44444370269775 L 19.99999809265137 12.55555534362793 L 3 12.55555534362793 L 3 14.44444370269775 Z M 3 18.22222328186035 L 19.99999809265137 18.22222328186035 L 19.99999809265137 16.33333396911621 L 3 16.33333396911621 L 3 18.22222328186035 Z M 3 10.66666603088379 L 19.99999809265137 10.66666603088379 L 19.99999809265137 8.777777671813965 L 3 8.777777671813965 L 3 10.66666603088379 Z M 3 5 L 3 6.888888359069824 L 19.99999809265137 6.888888359069824 L 19.99999809265137 5 L 3 5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3jhtir =
    '<svg viewBox="208.0 337.3 50.0 40.0" ><path transform="translate(208.0, 337.3)" d="M 6.386861324310303 0 L 43.61314392089844 0 C 47.1405029296875 0 50 8.954304695129395 50 20 C 50 31.04569244384766 47.1405029296875 40 43.61314392089844 40 L 6.386861324310303 40 C 2.859495639801025 40 0 31.04569244384766 0 20 C 0 8.954304695129395 2.859495639801025 0 6.386861324310303 0 Z" fill="#f78002" fill-opacity="0.0" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vkacvh =
    '<svg viewBox="227.0 343.3 12.4 16.0" ><path transform="translate(222.0, 340.3)" d="M 5.888888359069824 17.22222328186035 C 5.888888359069824 18.20000076293945 6.688888549804688 19 7.666666030883789 19 L 14.77777671813965 19 C 15.75555515289307 19 16.55555725097656 18.20000076293945 16.55555725097656 17.22222328186035 L 16.55555725097656 6.55555534362793 L 5.888888359069824 6.55555534362793 L 5.888888359069824 17.22222328186035 Z M 8.075554847717285 10.89333438873291 L 9.328888893127441 9.640000343322754 L 11.22222137451172 11.52444553375244 L 13.10666561126709 9.640000343322754 L 14.35999870300293 10.89333438873291 L 12.47555541992188 12.77777767181396 L 14.35999870300293 14.66222286224365 L 13.10666561126709 15.91555595397949 L 11.22222137451172 14.03111171722412 L 9.337777137756348 15.91555595397949 L 8.084444999694824 14.66222286224365 L 9.968888282775879 12.77777767181396 L 8.075554847717285 10.89333438873291 Z M 14.33333206176758 3.888889074325562 L 13.44444274902344 3 L 9 3 L 8.111110687255859 3.888889074325562 L 5 3.888889074325562 L 5 5.666666984558105 L 17.4444465637207 5.666666984558105 L 17.4444465637207 3.888889074325562 L 14.33333206176758 3.888889074325562 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w8i1y8 =
    '<svg viewBox="5.0 0.0 50.0 40.0" ><path transform="translate(5.0, 0.0)" d="M 6.386860370635986 0 L 43.61313629150391 0 C 47.1405029296875 0 50 8.954304695129395 50 20 C 50 31.04569244384766 47.1405029296875 40 43.61313629150391 40 L 6.386860370635986 40 C 2.859495162963867 40 0 31.04569244384766 0 20 C 0 8.954304695129395 2.859495162963867 0 6.386860370635986 0 Z" fill="#f78002" fill-opacity="0.0" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1vw912 =
    '<svg viewBox="21.0 7.0 17.0 13.2" ><path transform="translate(18.0, 2.0)" d="M 3 14.44444370269775 L 19.99999809265137 14.44444370269775 L 19.99999809265137 12.55555534362793 L 3 12.55555534362793 L 3 14.44444370269775 Z M 3 18.22222328186035 L 19.99999809265137 18.22222328186035 L 19.99999809265137 16.33333396911621 L 3 16.33333396911621 L 3 18.22222328186035 Z M 3 10.66666603088379 L 19.99999809265137 10.66666603088379 L 19.99999809265137 8.777777671813965 L 3 8.777777671813965 L 3 10.66666603088379 Z M 3 5 L 3 6.888888359069824 L 19.99999809265137 6.888888359069824 L 19.99999809265137 5 L 3 5 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lynv7l =
    '<svg viewBox="18.0 13.0 15.0 15.0" ><path transform="translate(15.0, 10.0)" d="M 13.72041130065918 12.43396186828613 L 13.04288196563721 12.43396186828613 L 12.80274486541748 12.20240116119385 C 13.64322471618652 11.22469997406006 14.1492280960083 9.955402374267578 14.1492280960083 8.574613571166992 C 14.1492280960083 5.495711803436279 11.65351676940918 3 8.574613571166992 3 C 5.495711803436279 3 3 5.495711803436279 3 8.574613571166992 C 3 11.65351676940918 5.495711803436279 14.1492280960083 8.574613571166992 14.1492280960083 C 9.955402374267578 14.1492280960083 11.22469997406006 13.64322471618652 12.20240116119385 12.80274486541748 L 12.43396186828613 13.04288196563721 L 12.43396186828613 13.72041130065918 L 16.72212600708008 18 L 18 16.72212600708008 L 13.72041130065918 12.43396186828613 Z M 8.574613571166992 12.43396186828613 C 6.439108371734619 12.43396186828613 4.71526575088501 10.71012020111084 4.71526575088501 8.574613571166992 C 4.71526575088501 6.439108371734619 6.439108371734619 4.71526575088501 8.574613571166992 4.71526575088501 C 10.71012020111084 4.71526575088501 12.43396186828613 6.439108371734619 12.43396186828613 8.574613571166992 C 12.43396186828613 10.71012020111084 10.71012020111084 12.43396186828613 8.574613571166992 12.43396186828613 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
