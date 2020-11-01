import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app_ui/UI/Widgets/app_drawer.dart';
import 'package:taxi_app_ui/UI/Widgets/custom_button.dart';
import 'package:taxi_app_ui/UI/Widgets/custom_field.dart';
import 'package:taxi_app_ui/Utils/constants.dart';

class PaymentView extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              scaffoldKey.currentState.openDrawer();
            },
          ),
          title: Text(
            "Payments",
            style: GoogleFonts.grenze(color: Colors.black),
          ),
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Constants.HEIGHTXL,
            CustomField(
              title: "Card Number",
            ),
            Container(
              margin: Constants.PADDING,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Expiry Date",
                        style: GoogleFonts.grenze(fontWeight: FontWeight.bold),
                      ),
                      Constants.HEIGHTL,
                      Container(
                        height: 50,
                        width: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CVV",
                        style: GoogleFonts.grenze(fontWeight: FontWeight.bold),
                      ),
                      Constants.HEIGHTL,
                      Container(
                        height: 50,
                        width: 100,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Constants.HEIGHTXL,
            Constants.HEIGHTXL,
            CustomButton(
              function: () {},
              title: "SAVE",
            )
          ],
        )),
      ),
    );
  }
}
