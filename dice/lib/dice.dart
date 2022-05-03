import 'dart:math';

import 'package:flutter/material.dart';

// class Dice extends StatelessWidget {
//   const Dice({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     int leftDiceNumber = 1;
//     int rightDiceNumber = 1;
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextButton(
//                   child: Image.asset('images/dice$leftDiceNumber.png'),
//                   onPressed: () => leftDiceNumber = 5),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextButton(
//                   child: Image.asset('images/dice$rightDiceNumber.png'),
//                   onPressed: () => rightDiceNumber = 5),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Dice extends StatefulWidget {
  Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  int _changeDice() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                      child: Image.asset('images/dice$leftDiceNumber.png'),
                      onPressed: () {
                        setState(() {
                          leftDiceNumber = _changeDice();
                        });
                      }),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                      child: Image.asset('images/dice$rightDiceNumber.png'),
                      onPressed: () {
                        setState(() {
                          rightDiceNumber = _changeDice();
                        });
                      }),
                ),
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.indigo[500]),
              onPressed: () {
                setState(() {
                  leftDiceNumber = _changeDice();
                  rightDiceNumber = _changeDice();
                });
              },
              child: const Text(
                'Roll the dice',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        ],
      ),
    );
  }
}
