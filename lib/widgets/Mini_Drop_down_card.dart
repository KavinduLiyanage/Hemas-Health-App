import 'package:flutter/material.dart';
import '../constants.dart';

class MiniDropDownCard extends StatelessWidget {
  final String hint;
  final List list;
  const MiniDropDownCard({
    Key key,
    this.hint,
    this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0.50),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: new DropdownButton<String>(
            hint: Text(this.hint),
            dropdownColor: kBackgroundColor,
            elevation: 5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 32.0,
            isExpanded: true,
            style: TextStyle(fontSize: 15),
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
