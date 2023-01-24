import 'package:course_registration/home/confirmation%20screen.dart';
import 'package:course_registration/home/course_registration.dart';
import 'package:course_registration/home/home.dart';
import 'package:course_registration/login/login.dart';
import 'package:course_registration/startup/startup_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  //Splash Screens
  Startup_SplashScreen.routeName: (context) => const Startup_SplashScreen(),

  //Login Page
  LogIn.routeName: (context) => const LogIn(),

  //Main App Pages
  Home.routeName: (context) => const Home(),
  CourseRegistration.routeName: (context) => const CourseRegistration(),
  ConfirmationScreen.routeName: (context) => const ConfirmationScreen(),
};
