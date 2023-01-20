import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_context.dart';

class InputPage extends StatefulWidget
{
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>
{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                        colour: Color(0xFF1D1E33),
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      )
                  ),
                  Expanded(
                      child: ReusableCard(
                        colour: Color(0xFF1D1E33),
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      )
                  ),
            ],
          )),
          Expanded(
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                icon: FontAwesomeIcons.venus,
                label: 'FEMALE',
              )
          ),
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                        colour: Color(0xFF1D1E33),
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      )
                  ),
                  Expanded(
                      child: ReusableCard(
                          colour: Color(0xFF1D1E33),
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                      )
                  ),
                ],
              )
          )
        ]
      )
    );
  }
}

class ReusableCard extends StatelessWidget
{
  ReusableCard({required this.colour, required this.icon, required this.label});

  final Color colour;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: IconContent(
        icon: icon,
        label: label
      ),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
