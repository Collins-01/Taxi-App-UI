import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app_ui/UI/Widgets/app_drawer.dart';
import 'package:taxi_app_ui/UI/Widgets/custom_button.dart';
import 'package:taxi_app_ui/UI/Widgets/custom_field.dart';
import 'package:taxi_app_ui/Utils/constants.dart';

class BasicProfile extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: scaffoldKey,
      child: Scaffold(
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
            "My Profile",
            style: GoogleFonts.grenze(color: Colors.black),
          ),
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Constants.HEIGHTXL,
              CustomField(
                title: "Full-Name",
              ),
              CustomField(
                title: "Email",
              ),
              CustomField(
                title: "password",
              ),
              Constants.HEIGHTXL,
              CustomButton(
                function: () {},
                title: "SAVE",
              )
            ],
          ),
        ),
      ),
    );
  }
}
