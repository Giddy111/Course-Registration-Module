// import 'package:flutter/material.dart';
// // ignore_for_file: sort_child_properties_last

// import 'package:chitory_app/constants/constants.dart';

// class PasswordThemeHelper {
//   InputDecoration textInputDecoration(
//       [String lablelText = "", String hintText = ""]) {
//     return InputDecoration(
//       // ignore: prefer_const_constructors
//       prefixIcon: Icon(
//         Icons.lock,
//         color: kAccentColor,
//       ),
//       suffixIcon: GestureDetector(
//         onTap: () {
//           obscureText = !obscureText;
//         },
//         child: obscureText
//             ? Icon(
//                 Icons.visibility_off_rounded,
//                 color: Colors.grey.shade500,
//               )
//             : Icon(
//                 Icons.visibility_rounded,
//                 color: Colors.grey.shade500,
//               ),
//       ),
//       labelText: lablelText,
//       // labelStyle: const TextStyle(color: kAccentColor),
//       hintText: hintText,
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(
//           100.0,
//         ),
//         borderSide: BorderSide(
//           color: Colors.grey.shade500,
//         ),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(
//           100.0,
//         ),
//         borderSide: const BorderSide(
//           color: kAccentColor,
//           width: 1,
//         ),
//       ),
//       errorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(
//           100.0,
//         ),
//         borderSide: const BorderSide(
//           color: Colors.red,
//           width: 2.0,
//         ),
//       ),
//       focusedErrorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(
//           100.0,
//         ),
//         borderSide: const BorderSide(
//           color: Colors.red,
//           width: 2.0,
//         ),
//       ),
//     );
//   }
// }
