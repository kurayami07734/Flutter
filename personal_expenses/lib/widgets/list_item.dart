import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

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
