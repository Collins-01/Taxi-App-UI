import 'package:flutter/material.dart';
import 'package:taxi_app_ui/UI/Views/Auth/login_view.dart';
import 'package:taxi_app_ui/UI/Views/Auth/sign_up_view.dart';
import 'package:taxi_app_ui/UI/Views/Drawer/basic_profile.dart';
import 'package:taxi_app_ui/UI/Views/Drawer/history_view.dart';
import 'package:taxi_app_ui/UI/Views/Drawer/payments_view.dart';
import 'package:taxi_app_ui/UI/Views/Home/diver_on_the_way.dart';
import 'package:taxi_app_ui/UI/Views/Home/home_view.dart';
import 'package:taxi_app_ui/UI/Views/Home/ratings_view.dart';
import 'package:taxi_app_ui/UI/Views/Home/search_view.dart';

class GenerateRoute {
  static Route<dynamic> onGenerateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "loginView":
        return MaterialPageRoute(builder: (context) => LoginView());
        break;
        case "basicProfile":
        return MaterialPageRoute(builder: (context) => BasicProfile());
        break;
      case "paymentView":
        return MaterialPageRoute(builder: (context) => PaymentView());
        break;
      case "rideHistoryView":
        return MaterialPageRoute(builder: (context) => HistoryView());
        break;
      case "ratingsView":
        return MaterialPageRoute(builder: (context) => RatingsView());
        break;
      case "signUpView":
        return MaterialPageRoute(builder: (context) => SignUpView());
        break;
      case "searchView":
        return MaterialPageRoute(builder: (context) => SearchView());
        break;
      case "driverOnTheWayView":
        return MaterialPageRoute(builder: (context) => DriverOnTheWayView());
        break;
      case "homeView":
        return MaterialPageRoute(builder: (context) => HomeView());
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => SafeArea(
            child: Scaffold(
              body: Center(
                  child: Text("No Registration for ${routeSettings.name}")),
            ),
          ),
        );
    }
  }
}
