import 'package:flutter/material.dart';

class PrivacyDropdown extends StatefulWidget {
  PrivacyDropdown({Key key}) : super(key: key);

  @override
  _PrivacyDropdownState createState() => _PrivacyDropdownState();
}

class _PrivacyDropdownState extends State<PrivacyDropdown> {
  String dropdownValue = 'Public';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 34,
      ),
      underline: Container(
        height: 2,
        color: Colors.blueAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Public', 'Private']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
