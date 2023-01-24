// ignore_for_file: camel_case_types

import 'package:course_registration/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Startup_SplashScreen extends StatelessWidget {
  static String routeName = "Startup Splash Screen";
  const Startup_SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        LogIn.routeName,
        (route) => false,
      );
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Center(
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    SpinKitChasingDots(
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
