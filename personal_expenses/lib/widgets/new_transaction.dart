import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  NewTransaction({Key? key, required this.addTx}) : super(key: key);
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final idController = TextEditingController();
  void submitData() {
    String enteredText = titleController.text;
    double enteredAmount = double.parse(amountController.text);
    String enteredId = idController.text;
    if (enteredText.isNotEmpty && enteredAmount >= 0 && enteredId.isNotEmpty) {
      addTx(enteredText, enteredAmount, enteredId);
    }
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
          ),
          ElevatedButton(
            onPressed: () => submitData(),
            child: Text('Add Transaction'),
          ),
        ],
      ),
    );
  }
}
