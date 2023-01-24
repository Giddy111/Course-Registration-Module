import 'dart:html';

import 'package:course_registration/home/home.dart';
import 'package:course_registration/style/constants.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatefulWidget {
  static String routeName = "Confirmation Screen";
  const ConfirmationScreen({super.key});

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Center(
              child: Container(
                width: 400,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/animations/successful-splash.gif",
                    ),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const Spacer(),
            Center(
                child: Column(
              children: [
                const Text(
                  "You have Successfully registered your courses",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                ElevatedButton(
                  onPressed: (() {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const Home()));
                  }),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        "Back to Home",
                      ),
                      kHalfWidthSizedBox,
                      Icon(
                        Icons.home_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
