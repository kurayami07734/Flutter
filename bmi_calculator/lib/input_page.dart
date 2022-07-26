import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
  none,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  static Color accentRed = const Color(0xFFEA1556);
  Gender selected = Gender.none;

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
                    selected != Gender.male
                        ? selected = Gender.male
                        : selected = Gender.none;
                  }),
                  child: Card(
                    color: ThemeData.dark().cardColor,
                    child: MyIcon(
                      displayIcon: FontAwesomeIcons.mars,
                      label: 'MALE',
                      iconColor:
                          selected == Gender.male ? accentRed : Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() {
                    selected != Gender.female
                        ? selected = Gender.female
                        : selected = Gender.none;
                  }),
                  child: Card(
                    color: ThemeData.dark().cardColor,
                    child: MyIcon(
                      displayIcon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                      iconColor:
                          selected == Gender.female ? accentRed : Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(child: Card(color: ThemeData.dark().cardColor, child: ,)),
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
          style: TextStyle(fontSize: 18, color: iconColor),
        ),
      ],
    );
  }
}
