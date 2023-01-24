import 'package:course_registration/themes/regnumber_themehelper.dart';
import 'package:flutter/material.dart';

class RegNumberField extends StatelessWidget {
  const RegNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    //RegNumber text field controller
    final TextEditingController regNumbercontroller = TextEditingController();

    return TextFormField(
      controller: regNumbercontroller,
      keyboardType: TextInputType.number,
      autocorrect: true,
      enableSuggestions: false,
      decoration: RegNumberThemeHelper().textInputDecoration(
        "Matriculation Number",
        "Enter your matriculation number",
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter your matriculation number!!";
        }
        return null;
      },
    );
  }
}
