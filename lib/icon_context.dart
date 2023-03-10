import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const IconContent_Text_Style = TextStyle(
    fontSize: 18.0,
    color: Color(0xFF8D8E98)
);

class IconContent extends StatelessWidget
{
  IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context)
  {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 80.0,
          ),
          SizedBox(
              height: 15.0
          ),
          Text(
              label,
              style: IconContent_Text_Style,
          )
        ]
    );
  }
}