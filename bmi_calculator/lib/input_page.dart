import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  static Color accentRed = Color(0xFFEA1556);
  Color iconColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        elevation: 5,
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() {
                    iconColor = accentRed;
                  }),
                  onDoubleTap: () => setState(() {
                    iconColor = Colors.white;
                  }),
                  child: Card(
                    color: ThemeData.dark().cardColor,
                    child: MyIcon(
                      displayIcon: FontAwesomeIcons.mars,
                      label: 'MALE',
                      iconColor: iconColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: ThemeData.dark().cardColor,
                  child: MyIcon(
                    displayIcon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(child: Card(color: ThemeData.dark().cardColor)),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Card(color: ThemeData.dark().cardColor)),
              Expanded(child: Card(color: ThemeData.dark().cardColor)),
            ],
          ),
        )
      ]),
    );
  }
}

class MyIcon extends StatelessWidget {
  final IconData displayIcon;
  final String label;
  Color? iconColor;
  MyIcon(
      {Key? key,
      required this.displayIcon,
      required this.label,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          displayIcon,
          size: 90,
          color: iconColor ?? Colors.white,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
