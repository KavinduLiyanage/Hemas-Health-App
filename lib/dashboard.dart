import 'package:flutter/material.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';
import 'package:hemashealth/widgets/category_card.dart';
import 'ChannelDoctor/confirmDoctorAppoint.dart';
import 'ChannelDoctor/doctorDetails.dart';
import 'ContactUs/contactUs.dart';
import 'ChannelDoctor/channelDoctor.dart';
import 'Feedback/feedback.dart';
import 'LabReport/membersCurrent.dart';
import 'LabReport/membersNew.dart';
import 'LoginRegister/userEdit.dart';
import 'LoginRegister/userProfile.dart';
import 'constants.dart';
import 'orderMedicine.dart';
import 'orderMedicineNew.dart';

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
      drawer: Container(
        width: 250,
        child: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          image: DecorationImage(
                            image:
                                const AssetImage('assets/images/profile5.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                              width: 1.0, color: const Color(0xffffffff)),
                        )),
                    Text(
                      "Ridmi Ekanayaka",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
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
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => UserProfile()));
                },
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit Profile'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => UserEdit()));
                },
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Feedback'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => UserFeedback()));
                },
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Contact us'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ContactUs()));
                },
              ),
            ],
          ), // Populate the Drawer in the next step.
        ),
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
                              if (orderPlaced == 1) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return OrderMedicineNew();
                                }));
                              } else {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return OrderMedicine();
                                }));
                              }
                            },
                          ),
                          CategoryCard(
                            title: "Lab Reports",
                            svgSrc: "assets/icons/dashboard_LabReport.svg",
                            press: () {
                              if (memberAdded == 1) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MembersNew();
                                }));
                              } else {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MembersCurrent();
                                }));
                              }
                            },
                          ),
                          CategoryCard(
                            title: "Feedback",
                            svgSrc: "assets/icons/dashboard_Feedback.svg",
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return UserFeedback();
                              }));
                            },
                          ),
                          CategoryCard(
                            title: "Video Calls",
                            svgSrc: "assets/icons/dashboard_VideoCalls.svg",
                            press: () {

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
