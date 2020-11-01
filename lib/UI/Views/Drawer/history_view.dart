import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app_ui/UI/Widgets/app_drawer.dart';
import 'package:taxi_app_ui/Utils/constants.dart';

class HistoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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
            "Ride History",
            style: GoogleFonts.grenze(color: Colors.black),
          ),
        ),
        drawer: AppDrawer(),
        body: ListView.separated(
            itemCount: 20,
            separatorBuilder: (context, int index) => Divider(),
            itemBuilder: (context, int index) {
              return Container(
                margin: Constants.PADDING,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        "${DateTime.now().toLocal()}",
                        style: GoogleFonts.grenze(),
                      ),
                      leading: Icon(
                        Icons.alarm_on,
                        color: Colors.green,
                      ),
                    ),
                    Row(
                      children: [
                        Text("No 3,Sain Albert's road,New York,America",
                            style:
                                GoogleFonts.grenze(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Text("${DateTime.now().toLocal()}",
                        style: GoogleFonts.grenze()),
                    Row(
                      children: [
                        Text("No 3,Sain Albert's road,New York,America",
                            style:
                                GoogleFonts.grenze(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Text("${DateTime.now().toLocal()}",
                        style: GoogleFonts.grenze()),
                    Row(
                      children: [
                        Text(
                          "Price: \$0.50",
                          style: GoogleFonts.grenze(),
                        ),
                        Spacer(),
                        Text(
                          "Cash Payment",
                          style: GoogleFonts.grenze(),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
