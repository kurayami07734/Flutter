import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;
  NewTransaction({Key? key, required this.addTx}) : super(key: key);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  final idController = TextEditingController();

  void submitData() {
    String enteredText = titleController.text;
    double enteredAmount = double.parse(amountController.text);
    String enteredId = idController.text;
    if (enteredText.isNotEmpty && enteredAmount >= 0 && enteredId.isNotEmpty) {
      widget.addTx(enteredText, enteredAmount, enteredId);
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Enter title'),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Enter amount'),
            controller: amountController,
            keyboardType: TextInputType.number,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Enter tag'),
            controller: idController,
            onSubmitted: (_) => submitData(),
          ),
          ElevatedButton(
            onPressed: submitData,
            child: Text('Add Transaction'),
          ),
        ],
      ),
    );
  }
}
