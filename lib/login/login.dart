import 'package:course_registration/home/home.dart';
import 'package:course_registration/login/modules/password_field.dart';
import 'package:course_registration/login/modules/regnumber_field.dart';
import 'package:course_registration/login/widgets/login_neumorphicbutton.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  static String routeName = "Login";
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 4,
            ),
            child: Column(
              children: [
                Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 30,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Please fill in your details to log in",
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            const RegNumberField(),
                            const SizedBox(
                              height: 20,
                            ),
                            const PasswordField(),
                            const SizedBox(
                              height: 20,
                            ),
                            LoginNeumorphicButton(
                              onPressed: (() {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    Home.routeName,
                                    (route) => false,
                                  );
                                }
                              }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
