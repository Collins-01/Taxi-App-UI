import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi_app_ui/UI/Widgets/app_drawer.dart';
import 'package:taxi_app_ui/UI/Widgets/custom_button.dart';
import 'package:taxi_app_ui/UI/Widgets/payment_dialog.dart';
import 'package:taxi_app_ui/UI/Widgets/promo_dialog.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  GoogleMapController mapController;
  String groupValue = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                scaffoldKey.currentState.openDrawer();
              }),
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "Home",
            style: GoogleFonts.grenze(color: Colors.black),
          ),
        ),
        drawer: AppDrawer(),
        body: Stack(children: [
          GoogleMap(
            myLocationEnabled: true,
            mapType: MapType.normal,
            onMapCreated: (GoogleMapController controller) {
              setState(() {
                mapController = controller;
              });
            },
            initialCameraPosition:
                CameraPosition(target: LatLng(7.14, 4.70), zoom: 10),
          ),
          Positioned(
            bottom: 0.0,
            right: 10,
            left: 10,
            child: Card(
              child: Container(
                height: 200,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => PaymentDialog(),
                            );
                          },
                          child: Row(
                            children: [
                              Icon(Icons.credit_card),
                              Text("Card", style: GoogleFonts.grenze())
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => PromoDialog());
                          },
                          child: Row(
                            children: [
                              Icon(Icons.edit),
                              Text("Promo", style: GoogleFonts.grenze())
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.edit),
                            Text("Note", style: GoogleFonts.grenze())
                          ],
                        )
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.local_taxi,
                              color: Colors.orange,
                            ),
                            Text("Sedan", style: GoogleFonts.grenze()),
                            Text("\$0.30", style: GoogleFonts.grenze())
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.local_taxi, color: Colors.red),
                            Text("SUV", style: GoogleFonts.grenze()),
                            Text("\$0.50", style: GoogleFonts.grenze())
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.local_taxi, color: Colors.amber),
                            Text("Taxi", style: GoogleFonts.grenze()),
                            Text("\$0.26", style: GoogleFonts.grenze())
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    CustomButton(
                      function: () {
                        Navigator.pushNamed(context, "searchView");
                      },
                      title: "Ride Now",
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
