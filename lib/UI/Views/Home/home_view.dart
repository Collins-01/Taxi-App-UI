import 'package:flutter/material.dart';
import 'package:taxi_app_ui/UI/Widgets/app_drawer.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: AppDrawer(),
      ),
    );
  }
}
