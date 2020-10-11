import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hemashealth/widgets/bottom_nav_bar.dart';
import 'package:hemashealth/widgets/Drop_down_card.dart';
import '../constants.dart';
import 'doctorSearchResult.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hemas Health',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: ChannelDoctor(),
    );
  }
}

class ChannelDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      floatingActionButton: Align(
          child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              width: 280.0,
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DoctorSearchResult()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                padding: const EdgeInsets.all(0.0),
                child: Ink(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          kBackgroundColor1,
                          kBackgroundColor2,
                        ]),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: Container(
                    constraints: const BoxConstraints(
                        minWidth: 88.0,
                        minHeight: 36.0), // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: const Text(
                      'Search Doctor',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              )),
          alignment: Alignment(0.25, 0.9)),
      bottomNavigationBar: BottomNavBar(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "Channel a Doctor",
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(fontWeight: FontWeight.w500, fontSize: 20),
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
                "Search Doctor",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 62,
                      width: 32,

                      //child: SvgPicture.asset("assets/icons/menuIcon.svg"),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
                      child: GridView.count(
                        crossAxisCount: 1,
                        childAspectRatio: 8,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 25,
                        children: <Widget>[
                          DropDownCard(hint: "Select Doctor", list: [
                            'Dr. Sherley Abraham',
                            'Dr. Turgut Alagoz',
                            'Dr. Stacey Akersmd',
                            'Dr. Mariam Al Hillim',
                            'Dr. Edwin Alvarez',
                            'Dr. Louisiana Johns'
                          ]),
                          DropDownCard(hint: "Select Speciality", list: [
                            'General Physician',
                            'Eye Surgeon',
                            'Dermitologist',
                            'General Obstetrics',
                            'Cardiologist',
                            'Obstetrics & Gynecology'
                          ]),
                          DropDownCard(hint: "Hemas - Thalawathugoda", list: [
                            'Hemas - Thalawathugoda',
                            'Hemas - Wattala'
                          ]),
                          DropDownCard(hint: "Select Date", list: [
                            '01',
                            '02',
                            '03',
                            '04',
                            '05',
                            '06',
                            '07',
                            '08',
                            '09',
                            '10',
                            '11',
                            '12',
                            '13',
                            '14',
                            '15',
                            '16',
                            '17',
                            '18',
                            '19',
                            '20',
                            '21',
                            '22',
                            '23',
                            '24',
                            '25',
                            '26',
                            '27',
                            '28',
                            '29',
                            '30',
                            '31'
                          ]),
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
