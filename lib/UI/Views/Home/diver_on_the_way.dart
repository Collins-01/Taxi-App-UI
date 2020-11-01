import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi_app_ui/UI/Widgets/custom_button.dart';
import 'package:taxi_app_ui/Utils/constants.dart';

class DriverOnTheWayView extends StatefulWidget {
  @override
  _DriverOnTheWayViewState createState() => _DriverOnTheWayViewState();
}

class _DriverOnTheWayViewState extends State<DriverOnTheWayView> {
  GoogleMapController mapController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          actions: [
            IconButton(
              icon: Icon(Icons.cancel, color: Colors.red),
              onPressed: () {
                Navigator.pushNamed(context, "homeView");
              },
            )
          ],
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Driver On The Way",
            style: GoogleFonts.grenze(color: Colors.black),
          ),
        ),
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                setState(() {
                  mapController = controller;
                });
              },
              initialCameraPosition:
                  CameraPosition(target: LatLng(7.014, 4.65), zoom: 10),
            ),
            Positioned(
              bottom: 0.0,
              right: 3,
              left: 3,
              child: Card(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 100,
                            width: 100,
                            child: Image.asset("images/Teo.png",
                                fit: BoxFit.contain),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(60),
                              ),
                            ),
                          ),
                          title: Text(
                            "Robert Scoffield",
                            style: GoogleFonts.grenze(color: Colors.black),
                          ),
                          subtitle: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Nk3 448 67B",
                                style: GoogleFonts.grenze(color: Colors.black),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.star, color: Colors.red),
                              Text(
                                "4.5",
                                style: GoogleFonts.grenze(color: Colors.black),
                              )
                            ],
                          ),
                          trailing: IconButton(
                              icon: Icon(
                                Icons.phone_in_talk,
                                color: Colors.green,
                              ),
                              onPressed: () {}),
                        ),
                        Constants.HEIGHTL,
                        CustomButton(
                          function: () {
                            Navigator.pushNamed(context, "ratingsView");
                          },
                          title: "Show Rate Card",
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
