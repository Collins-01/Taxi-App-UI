import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Function function;
  final String title;
  CustomButton({this.function, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.85,
      child: RaisedButton(
        color: Colors.black,
        onPressed: function,
        child: Text(title, style: GoogleFonts.grenze(color: Colors.white)),
      ),
    );
  }
}
