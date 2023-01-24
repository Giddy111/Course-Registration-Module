import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _visiblePassword = false;
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      keyboardType: TextInputType.text,
      maxLength: 16,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      obscureText: !_visiblePassword,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        prefixIcon: const Icon(
          Icons.lock,
          color: Colors.blue,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _visiblePassword = !_visiblePassword;
            });
          },
          icon: _visiblePassword
              ? const Icon(
                  Icons.visibility_rounded,
                  color: Colors.blue,
                )
              : Icon(
                  Icons.visibility_off_rounded,
                  color: Colors.grey.shade500,
                ),
          splashColor: Colors.blue,
        ),
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
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter your password!!";
        }
        return null;
      },
    );
  }
}
