import 'package:deal_done/res/routes/routes_name.dart';
import 'package:deal_done/res/services/auth_services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: Text("Sign Out"),
        onPressed: () {
          authService.signOUt();
          Navigator.pushNamed(context, RoutesName.loginScreen);
        },
      )),
    );
  }
}
