import 'package:flutter/material.dart';
import '../models/transaction.dart';

class Bar extends StatelessWidget {
  final String tag;
  final double amount;
  const Bar({Key? key, required this.tag, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          tag,
          style: ThemeData.light().textTheme.bodyText1,
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: amount * 100,
          width: 30,
          color: Colors.amber,
        ),
      ],
    );
  }
}

class Chart extends StatelessWidget {
  final List<Transaction> txns;
  Chart({Key? key, required this.txns}) : super(key: key);

  List<Bar> groupTranactions() {
    Map<String, double> txnMap =
        Map.fromIterable(txns, key: (e) => e.id, value: (e) => e.amount);
    double totalAmount = 0;
    List<Bar> bars = [];
    txns.forEach((e) => totalAmount += e.amount);
    txnMap.forEach((key, value) => bars.add(Bar(
          tag: key,
          amount: value / totalAmount,
        )));

    return bars;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(children: groupTranactions()),
      ),
    );
  }
}
