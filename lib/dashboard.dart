import 'package:flutter/material.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';
import 'package:hemashealth/widgets/category_card.dart';
import 'ContactUs/contactUs.dart';
import 'ChannelDoctor/channelDoctor.dart';
import 'LabReport/membersNew.dart';
import 'LoginRegister/userEdit.dart';
import 'LoginRegister/userProfile.dart';
import 'constants.dart';
import 'orderMedicine.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "Dashboard",
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        backgroundColor: Color(0x44000000),
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Kavindu Sandeepa'),
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
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Feedback'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (_) => UserProfile()));
              },
            ),
            ListTile(
              title: Text('Edit Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (_) => UserEdit()));
              },
            ),
          ],
        ), // Populate the Drawer in the next step.
      ),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .35,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    kBackgroundColor1,
                    kBackgroundColor2,
                  ]),
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
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Container(
              child: Text(
                "Quick Links",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /*  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 62,
                      width: 32,

                      child: SvgPicture.asset("assets/icons/menuIcon.svg"),
                    ),
                  ),
                  Text(
                    "Dashboard",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w700,  fontSize: 28),
                  ),*/

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 85.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: <Widget>[
                          CategoryCard(
                            title: "Channel a Doctor",
                            svgSrc:
                                "assets/icons/dashboard_ChannelaDoctor2.svg",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return ChannelDoctor();
                                }),
                              );
                            },
                          ),
                          CategoryCard(
                            title: "Order Medicine",
                            svgSrc: "assets/icons/dashboard_OrderMedicine2.svg",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return OrderMedicine();
                                }),
                              );
                            },
                          ),
                          CategoryCard(
                            title: "Lab Reports",
                            svgSrc: "assets/icons/dashboard_LabReport.svg",
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MembersNew();
                              }));
                            },
                          ),
                          CategoryCard(
                            title: "Feedback",
                            svgSrc: "assets/icons/dashboard_Feedback.svg",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Video Calls",
                            svgSrc: "assets/icons/dashboard_VideoCalls.svg",
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return UserProfile();
                                  }));
                            },
                          ),
                          CategoryCard(
                            title: "Contact Us",
                            svgSrc: "assets/icons/dashboard_ContactsUs2.svg",
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ContactUs();
                              }));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
