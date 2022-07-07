import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/new_transaction.dart';
import './models/transaction.dart';
import './widgets/user_transactions.dart';
import './widgets/list_item.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
          return NewTransaction(addTx: _addNewTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _startAddNewTransaction(context);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
