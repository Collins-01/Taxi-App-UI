import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              radius: 50,
              child: Image.asset("images/Teo.png", fit: BoxFit.cover),
            ),
            accountName: Text(
              "Robert Scoffield",
              style: GoogleFonts.grenze(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "robsoffs440@gmail.com",
              style: GoogleFonts.grenze(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, "homeView");
            },
            child: ListTile(
              title: Text(
                "Home",
                style: GoogleFonts.grenze(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(Icons.home, color: Colors.brown),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, "rideHistoryView");
            },
            child: ListTile(
              title: Text(
                "Ride History",
                style: GoogleFonts.grenze(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(Icons.history, color: Colors.blue),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, "paymentView");
            },
            child: ListTile(
              title: Text(
                "Payments",
                style: GoogleFonts.grenze(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(Icons.credit_card, color: Colors.green),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, "basicProfile");
            },
            child: ListTile(
              title: Text(
                "My Profile",
                style: GoogleFonts.grenze(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(Icons.person, color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
