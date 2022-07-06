import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Expense tracker')),
        body: MyHomePage(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final Transaction txn;
  const ListItem({required this.txn});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '\$${txn.amount}',
            style: TextStyle(fontSize: 35, fontStyle: FontStyle.italic),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                txn.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(txn.id),
              Text(DateFormat.yMMMd().format(txn.date)),
            ],
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Transaction> txns = [
    Transaction(
      id: 'food',
      title: 'Sushi',
      amount: 50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'discretionary',
      title: 'Pub',
      amount: 400,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'essential',
      title: 'Groceries',
      amount: 35,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'discretionary',
      title: 'Drinks',
      amount: 65,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: txns.map((tx) => ListItem(txn: tx)).toList()),
    );
  }
}
