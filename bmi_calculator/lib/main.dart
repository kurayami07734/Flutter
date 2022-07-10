import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const InputPage(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF090C22)),
        scaffoldBackgroundColor: Color(0xFF090C22),
        cardColor: Color(0xFF1D1F33),
      ),
    );
  }
}
