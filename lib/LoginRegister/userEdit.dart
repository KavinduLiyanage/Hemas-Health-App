import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hemashealth/dashboard.dart';
import 'package:hemashealth/widgets/alert_dialog2.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';
import '../constants.dart';

class UserEdit extends StatelessWidget {

  TextEditingController myControllerName = TextEditingController()..text = 'Ridmi Ekanayaka';
  TextEditingController myControllerNic = TextEditingController()..text = '966581321v';
  TextEditingController myControllerEmail = TextEditingController()..text = 'ridmi123@gmail.com';
  TextEditingController myControllerDate = TextEditingController()..text = '1996-10-08';

  UserEdit({
    Key key,
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
          "My Profile",
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
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AlertDialog2(
                    title2: "Profile details updated.",
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
                      'Update Details',
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
      //backgroundColor: const Color(0xffffffff),
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
            margin: EdgeInsets.fromLTRB(20, 155, 20, 0),
            height: size.height * .7,
            width: size.height * contentAreaWidth,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))
              ,
            ),
            child: Container(
              child: Text("Edit Profile Details",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              alignment: Alignment.topCenter,
            ),
          ),
          Transform.translate(
            offset: Offset(32.0, 127.0),
            child: SizedBox(
              width: 350.0,
              height: 618.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 113.0, 350.0, 525.0),
                    size: Size(350.0, 618.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(36.0, 34.0, 279.0, 330.0),
                          size: Size(350.0, 525.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.0, 165.0, 230.0, 44.0),
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
                                        'Gender',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff000000),
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
                                                10.0, 0.0, 198.0, 18.0),
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
                                                  child: Radio(
                                                    value: 1,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      25.0, -5.0, 94.0, 27.0),
                                                  size: Size(98.0, 18.0),
                                                  pinLeft: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  fixedWidth: true,
                                                  child: Text(
                                                    'Male',
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
                                                0.0, 0.0, 97.0, 18.0),
                                            size: Size(97.0, 18.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      -27.0, 2.0, 16.0, 16.0),
                                                  size: Size(97.0, 18.0),
                                                  pinLeft: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  fixedWidth: true,
                                                  child: Radio(
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
                                                    'Female',
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 196.0, 279.0, 57.0),
                                size: Size(279.0, 330.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 22.0, 279.0, 35.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xff868686)),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          249.0, 28.0, 20.0, 22.9),
                                      size: Size(279.0, 57.0),
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'calendar-alt' (shape)
                                          SvgPicture.string(
                                        _svg_mmppk5,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          20.0, 25.0, 300.0, 25.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: TextField(
                                          controller: myControllerDate,
                                        style: TextStyle(
                                            letterSpacing: 1.0, fontSize: 16),
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 10,
                                              bottom: 10,
                                              top: 0,
                                              right: 10),
                                          hintText: "Select Date",
                                        ),
                                        keyboardType: TextInputType.datetime,
                                        cursorColor: Colors.black12,
                                        // Only numbers can be entered
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 100.0, 17.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Date of Birth',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff000000),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 114.0, 279.0, 57.0),
                                size: Size(279.0, 330.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 22.0, 279.0, 35.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xff868686)),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          20.0, 25.0, 300.0, 25.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: TextField(
                                          controller: myControllerEmail,
                                        style: TextStyle(
                                            letterSpacing: 1.0, fontSize: 16),
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 10,
                                              bottom: 10,
                                              top: 0,
                                              right: 10),
                                          hintText: "Enter Email",
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        cursorColor: Colors.black12,
                                        // Only numbers can be entered
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 50.0, 17.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Email',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff000000),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 32.0, 279.0, 57.0),
                                size: Size(279.0, 330.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 22.0, 279.0, 35.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xff868686)),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          20.0, 25.0, 300.0, 25.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: TextField(
                                          controller: myControllerNic,
                                        style: TextStyle(
                                            letterSpacing: 1.0, fontSize: 16),
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 10,
                                              bottom: 10,
                                              top: 0,
                                              right: 10),
                                          hintText: "Enter Nic",
                                        ),
                                        keyboardType: TextInputType.number,
                                        cursorColor: Colors.black12,
                                        inputFormatters: <TextInputFormatter>[
                                          LengthLimitingTextInputFormatter(12),
                                        ],
                                        // Only numbers can be entered
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 50.0, 17.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'NIC',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff000000),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, -50.0, 279.0, 57.0),
                                size: Size(279.0, 330.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 22.0, 279.0, 35.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xff868686)),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          20.0, 25.0, 300.0, 25.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: TextField(
                                          controller: myControllerName,
                                        style: TextStyle(
                                            letterSpacing: 1.0, fontSize: 16),
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 10,
                                              bottom: 10,
                                              top: 0,
                                              right: 10),
                                          hintText: "Enter full name",
                                        ),
                                        keyboardType: TextInputType.text,
                                        cursorColor: Colors.black12,
                                        // Only numbers can be entered
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 100.0, 17.0),
                                      size: Size(279.0, 57.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Full Name',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_mmppk5 =
    '<svg viewBox="297.0 333.0 20.0 22.9" ><path transform="translate(297.0, 333.0)" d="M 6.607143402099609 12.85714435577393 L 4.821429252624512 12.85714435577393 C 4.526786327362061 12.85714435577393 4.285714149475098 12.61607360839844 4.285714149475098 12.32143020629883 L 4.285714149475098 10.53571510314941 C 4.285714149475098 10.2410717010498 4.526786327362061 10 4.821429252624512 10 L 6.607143402099609 10 C 6.901786804199219 10 7.142858028411865 10.2410717010498 7.142858028411865 10.53571510314941 L 7.142858028411865 12.32143020629883 C 7.142858028411865 12.61607360839844 6.901786804199219 12.85714435577393 6.607143402099609 12.85714435577393 Z M 11.42857265472412 12.32143020629883 L 11.42857265472412 10.53571510314941 C 11.42857265472412 10.2410717010498 11.18750095367432 10 10.89285850524902 10 L 9.107143402099609 10 C 8.8125 10 8.571428298950195 10.2410717010498 8.571428298950195 10.53571510314941 L 8.571428298950195 12.32143020629883 C 8.571428298950195 12.61607360839844 8.8125 12.85714435577393 9.107143402099609 12.85714435577393 L 10.89285850524902 12.85714435577393 C 11.18750095367432 12.85714435577393 11.42857265472412 12.61607360839844 11.42857265472412 12.32143020629883 Z M 15.71428775787354 12.32143020629883 L 15.71428775787354 10.53571510314941 C 15.71428775787354 10.2410717010498 15.47321605682373 10 15.17857265472412 10 L 13.39285850524902 10 C 13.09821605682373 10 12.85714435577393 10.2410717010498 12.85714435577393 10.53571510314941 L 12.85714435577393 12.32143020629883 C 12.85714435577393 12.61607360839844 13.09821605682373 12.85714435577393 13.39285850524902 12.85714435577393 L 15.17857265472412 12.85714435577393 C 15.47321605682373 12.85714435577393 15.71428775787354 12.61607360839844 15.71428775787354 12.32143020629883 Z M 11.42857265472412 16.60714530944824 L 11.42857265472412 14.8214282989502 C 11.42857265472412 14.5267858505249 11.18750095367432 14.28571605682373 10.89285850524902 14.28571605682373 L 9.107143402099609 14.28571605682373 C 8.8125 14.28571605682373 8.571428298950195 14.5267858505249 8.571428298950195 14.8214282989502 L 8.571428298950195 16.60714530944824 C 8.571428298950195 16.90178680419922 8.8125 17.14285659790039 9.107143402099609 17.14285659790039 L 10.89285850524902 17.14285659790039 C 11.18750095367432 17.14285659790039 11.42857265472412 16.90178680419922 11.42857265472412 16.60714530944824 Z M 7.142858028411865 16.60714530944824 L 7.142858028411865 14.8214282989502 C 7.142858028411865 14.5267858505249 6.901786804199219 14.28571605682373 6.607143402099609 14.28571605682373 L 4.821429252624512 14.28571605682373 C 4.526786327362061 14.28571605682373 4.285714149475098 14.5267858505249 4.285714149475098 14.8214282989502 L 4.285714149475098 16.60714530944824 C 4.285714149475098 16.90178680419922 4.526786327362061 17.14285659790039 4.821429252624512 17.14285659790039 L 6.607143402099609 17.14285659790039 C 6.901786804199219 17.14285659790039 7.142858028411865 16.90178680419922 7.142858028411865 16.60714530944824 Z M 15.71428775787354 16.60714530944824 L 15.71428775787354 14.8214282989502 C 15.71428775787354 14.5267858505249 15.47321605682373 14.28571605682373 15.17857265472412 14.28571605682373 L 13.39285850524902 14.28571605682373 C 13.09821605682373 14.28571605682373 12.85714435577393 14.5267858505249 12.85714435577393 14.8214282989502 L 12.85714435577393 16.60714530944824 C 12.85714435577393 16.90178680419922 13.09821605682373 17.14285659790039 13.39285850524902 17.14285659790039 L 15.17857265472412 17.14285659790039 C 15.47321605682373 17.14285659790039 15.71428775787354 16.90178680419922 15.71428775787354 16.60714530944824 Z M 20 5 L 20 20.71428871154785 C 20 21.8973217010498 19.0401782989502 22.85714530944824 17.85714530944824 22.85714530944824 L 2.142857074737549 22.85714530944824 C 0.9598215222358704 22.85714530944824 0 21.8973217010498 0 20.71428871154785 L 0 5 C 0 3.816964387893677 0.9598215222358704 2.85714316368103 2.142857074737549 2.85714316368103 L 4.285714149475098 2.85714316368103 L 4.285714149475098 0.5357142686843872 C 4.285714149475098 0.2410714477300644 4.526786327362061 0 4.821429252624512 0 L 6.607143402099609 0 C 6.901786804199219 0 7.142858028411865 0.2410714477300644 7.142858028411865 0.5357142686843872 L 7.142858028411865 2.85714316368103 L 12.85714435577393 2.85714316368103 L 12.85714435577393 0.5357142686843872 C 12.85714435577393 0.2410714477300644 13.09821605682373 0 13.39285850524902 0 L 15.17857265472412 0 C 15.47321605682373 0 15.71428775787354 0.2410714477300644 15.71428775787354 0.5357142686843872 L 15.71428775787354 2.85714316368103 L 17.85714530944824 2.85714316368103 C 19.0401782989502 2.85714316368103 20 3.816964387893677 20 5 Z M 17.85714530944824 20.4464282989502 L 17.85714530944824 7.142858028411865 L 2.142857074737549 7.142858028411865 L 2.142857074737549 20.4464282989502 C 2.142857074737549 20.59375190734863 2.26339316368103 20.71428871154785 2.410714626312256 20.71428871154785 L 17.58928680419922 20.71428871154785 C 17.73660850524902 20.71428871154785 17.85714530944824 20.59375190734863 17.85714530944824 20.4464282989502 Z" fill="#000000" fill-opacity="0.6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
