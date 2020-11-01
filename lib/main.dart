import 'package:flutter/material.dart';
import 'package:taxi_app_ui/UI/Views/Auth/splash_screen.dart';
import 'package:taxi_app_ui/UI/Views/Home/home_view.dart';
import 'package:taxi_app_ui/navigations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxi App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: GenerateRoute.onGenerateRoutes,
      home: SplashScreen(),
    );
  }
}
