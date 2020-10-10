import 'package:flutter/material.dart';
import '../constants.dart';

class DropDownCard extends StatelessWidget {
  final String hint;
  final List list;
  const DropDownCard({
    Key key,
    this.hint,
    this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: new DropdownButton<String>(
            hint: Text(this.hint),
            dropdownColor: kBackgroundColor,
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 32.0,
            isExpanded: true,
            items: list.map((value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(
                  value,
                  style: TextStyle(color: kActiveIconColor),
                ),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
      ),
    );
  }
}
