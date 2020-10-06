import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hemashealth/dashboard.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';
import 'package:image_picker/image_picker.dart';
import '../constants.dart';
import 'orderDetails.dart';

class ImagePickerWidgetNew extends StatefulWidget {
  ImagePickerWidgetNew({Key key}) : super(key: key);

  @override
  _ImagePickerWidgetNewState createState() => _ImagePickerWidgetNewState();
}

class _ImagePickerWidgetNewState extends State {

  File _image;
  @override
  void initState() {
    super.initState();
  }

  void open_camera()
  async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });

  }
  void open_gallery()
  async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
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
            "Order Medicine",
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
                    MaterialPageRoute(builder: (context) => OrderDetails(image: _image,)),
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
                      'Next',
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
                child: Text("Select Image",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
                padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
              ),
            ),
            Container(
              child: Row(
                children: <Widget> [
                  Spacer(),
                  Align(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0,0, 180),
                          width: 120.0,
                          height: 35.0,
                          child: RaisedButton(
                            onPressed: () {
                              open_gallery();
                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Container(
                                constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                                alignment: Alignment.center,
                                child: Row( // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                  Spacer(),
                                  Icon(Icons.phone_android),
                                  Text("From Device",
                                    style: TextStyle(
                                        fontSize: 12),
                                  ),
                                  Spacer(),
                              ],
                            ),
                              ),
                            ),
                          )
                      ),
                      alignment: Alignment(0, 0.9)
                  ),
                  Spacer(),
                  Spacer(),
                  Align(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0,0, 180),
                          width: 120.0,
                          height: 35.0,
                          child: RaisedButton(
                            onPressed: () {
                              open_camera();
                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Container(
                                constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                                alignment: Alignment.center,
                                child: Row( // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Spacer(),
                                    Icon(Icons.camera_alt),
                                    Text("Take a snap",
                                      style: TextStyle(
                                          fontSize: 12),),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          )
                      ),
                      alignment: Alignment(0, 0.9)
                  ),
                  Spacer()
                ],
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 80, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment(0, 2),
                      child: Container(
                        height: 300.0,
                        width: 320.0,
                        alignment: Alignment.center,
                        child: _image == null ? Text("     Upload \n       Your \n Prescription",
                          style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize: 30
                          ),
                        ) : Image.file(_image),
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