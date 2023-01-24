// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class RegNumberThemeHelper {
  InputDecoration textInputDecoration(
      [String lablelText = "", String hintText = ""]) {
    return InputDecoration(
      // ignore: prefer_const_constructors
      prefixIcon: Icon(
        Icons.numbers,
        color: Colors.blue,
      ),
      labelText: lablelText,
      // labelStyle: const TextStyle(color: Colors.blue),
      hintText: hintText,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          100.0,
        ),
        borderSide: BorderSide(
          color: Colors.grey.shade500,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          100.0,
        ),
        borderSide: const BorderSide(
          color: Colors.blue,
          width: 1,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          100.0,
        ),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2.0,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          100.0,
        ),
        borderSide: const BorderSide(
          color: Colors.red,
          width: 2.0,
        ),
      ),
    );
  }
}
