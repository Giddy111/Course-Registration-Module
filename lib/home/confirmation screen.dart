// ignore_for_file: file_names
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 400,
                height: 200,
                child: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 50,
                ),
              ),
              kSizedBox,
              const Text(
                "You have Successfully registered your courses",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    Home.routeName,
                    (route) => false,
                  );
                }),
                child: const Text(
                  "Back to Home",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
