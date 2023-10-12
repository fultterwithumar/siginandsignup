import 'package:deal_done/res/routes/routes_name.dart';
import 'package:deal_done/screens/home_screen.dart';
import 'package:deal_done/screens/login_screen.dart';
import 'package:deal_done/screens/register_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.loginScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RoutesName.registerScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RegisterScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No Routes Defined"),
            ),
          );
        });
    }
  }
}
