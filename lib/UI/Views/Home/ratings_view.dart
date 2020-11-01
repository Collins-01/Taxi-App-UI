import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app_ui/UI/Widgets/custom_button.dart';
import 'package:taxi_app_ui/Utils/constants.dart';

class RatingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Ratings",
            style: GoogleFonts.grenze(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Constants.HEIGHTXL,
            Center(
              child: Text(
                "\$ 0.50",
                style: GoogleFonts.grenze(
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                ),
              ),
            ),
            Constants.HEIGHTL,
            Center(
              child: Text(
                "Payment Mode: Card",
                style: GoogleFonts.grenze(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Constants.HEIGHTXL,
            Center(
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset("images/Teo.png", fit: BoxFit.contain),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
            ),
            Constants.HEIGHTL,
            Center(
              child: Text(
                "Robert Scoffield",
                style: GoogleFonts.grenze(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Constants.HEIGHTL,
            Center(
              child: Text(
                "ABS 789 430",
                style: GoogleFonts.grenze(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Constants.HEIGHTXL,
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star, color: Colors.black)
                    ],
                  ),
                ],
              ),
            ),
            Constants.HEIGHTXL,
            Constants.HEIGHTL,
            CustomButton(
              function: () {},
              title: "Rate This Trip",
            )
          ],
        ),
      ),
    );
  }
}
