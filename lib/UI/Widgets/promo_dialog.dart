import 'package:flutter/material.dart';

class PromoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Enter Promo Code"),
      content: Container(
          child: Container(
        width: 120,
        child: TextField(),
      )),
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
