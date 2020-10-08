import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'alert_dialog.dart';

class CategoryCardOrdersList extends StatelessWidget {
  final String svgSrc;
  final String title;
  final String address;
  final Function press;
  const CategoryCardOrdersList({
    Key key,
    this.svgSrc,
    this.title,
    this.address,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: kBackgroundColor3),
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: <Widget>[
                  Spacer(),
                  SvgPicture.asset(svgSrc),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Spacer(),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontSize: 18),
                      ),
                      Spacer(),
                      Text(
                        address,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontSize: 13),
                      ),

                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                            child: RaisedButton(
                              color: kBackgroundColor3,
                              onPressed: () => showDialog(
                                context: context,
                                builder: (context) => AboutWidget(
                                  title: "Your Reorder Request Sent.",
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Text('Reorder',
                                style: TextStyle(color: Colors.white, fontSize: 14),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                            child: RaisedButton(
                              color: kBackgroundColor3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              onPressed: () => showDialog(
                                context: context,
                                builder: (context) => AboutWidget(
                                  title: "Your Cancel Order Request Sent.",
                                ),
                              ),
                              child: Text('Cancel Order',
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Spacer(),
                    ],
                  ),

                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

