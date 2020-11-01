import 'package:flutter/material.dart';

class PaymentDialog extends StatefulWidget {
  @override
  _PaymentDialogState createState() => _PaymentDialogState();
}

class _PaymentDialogState extends State<PaymentDialog> {
  String groupValue = "";
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Choose Payments"),
      content: Container(
        height: 120,
        child: Column(children: [
          ListTile(
            leading: Radio(
              value: "Cash",
              onChanged: (value) {
                setState(() {
                  groupValue = value;
                });
              },
              groupValue: groupValue,
            ),
            title: Text("Cash"),
          ),
          ListTile(
            leading: Radio(
              value: "Card",
              onChanged: (value) {
                setState(() {
                  groupValue = value;
                });
              },
              groupValue: groupValue,
            ),
            title: Text("Card"),
          ),
        ]),
      ),
      actions: [
        FlatButton(
          child: Text("CANCEL"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text("CHOOSE"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
