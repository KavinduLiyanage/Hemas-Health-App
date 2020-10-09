import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class DoctorCardWhiteBox extends StatelessWidget {
  final String svgSrc;
  final String name;
  final String hint;
  const DoctorCardWhiteBox({Key key, this.svgSrc, this.name, this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(11),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Color(0x01FFFFFF),
          borderRadius: BorderRadius.circular(11),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: Color(0x01FFFFFF),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            //onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: <Widget>[
                  Spacer(),
                  SvgPicture.asset(
                    svgSrc,
                    width: 33,
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Spacer(),
                      Text(
                        name,
                        textAlign: TextAlign.left,
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontSize: 18),
                      ),
                      Spacer(),
                      Text(
                        hint,
                        textAlign: TextAlign.left,
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontSize: 13),
                      ),
                      Spacer(),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_right),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
