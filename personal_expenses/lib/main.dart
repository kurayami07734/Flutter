import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './widgets/transaction_list.dart';
import './widgets/new_transaction.dart';
import './widgets/chart.dart';

import './models/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: ThemeData.light().textTheme.copyWith(
                titleLarge: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
          appBarTheme: AppBarTheme(
            titleTextStyle: GoogleFonts.quicksand(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _txns = [];
  void _addNewTransaction(String title, double amount, String id) {
    final newTx = Transaction(
      id: id,
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _txns.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.opaque,
            child: NewTransaction(addTx: _addNewTransaction),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense tracker'),
        actions: [
          IconButton(
            onPressed: () {
              _startAddNewTransaction(context);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Chart(
              txns: _txns
                  .where((tx) => tx.date
                      .isAfter(DateTime.now().subtract(Duration(days: 7))))
                  .toList()),
          TransactionList(txns: _txns),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _startAddNewTransaction(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
