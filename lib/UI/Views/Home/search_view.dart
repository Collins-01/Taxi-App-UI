import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  GoogleMapController mapController;

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
            "Search",
            style: GoogleFonts.grenze(color: Colors.black),
          ),
          bottom: PreferredSize(
            child: Container(
              color: Colors.grey[200],
              margin: EdgeInsets.all(10),
              height: 50,
              child: TextField(
                textInputAction: TextInputAction.done,
                onSubmitted: (value) {
                  Navigator.pushNamed(context, "driverOnTheWayView");
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20, top: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(60),
          ),
        ),
        body: GoogleMap(
          mapType: MapType.normal,
          onMapCreated: (GoogleMapController controller) {
            setState(() {
              mapController = controller;
            });
          },
          initialCameraPosition:
              CameraPosition(target: LatLng(7.014, 4.65), zoom: 10),
        ),
      ),
    );
  }
}
