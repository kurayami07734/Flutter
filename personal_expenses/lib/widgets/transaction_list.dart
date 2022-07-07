import 'package:flutter/material.dart';
import './list_item.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key, required this.txns}) : super(key: key);

  final List<Transaction> txns;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem(txn: txns[index]);
        },
        itemCount: txns.length,
      ),
    );
  }
}
