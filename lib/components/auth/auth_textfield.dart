import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final String hintText;
  // hide text
  final bool obscureText;
  final TextEditingController controller;

  const AuthTextField(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.controller});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  late bool shouldObscure = true;

  void toggleVisibility() {
    setState(() {
      this.shouldObscure = !this.shouldObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color : Color.fromARGB(255, 235, 235, 235))),
        suffixIcon: widget.obscureText
            ? shouldObscure
                ? IconButton(
                    icon: const Icon(Icons.visibility, color: Colors.grey),
                    onPressed: toggleVisibility)
                : IconButton(
                    icon: const Icon(Icons.visibility_off, color: Colors.grey),
                    onPressed: toggleVisibility,
                  )
            : null,
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: const Color.fromARGB(255, 249, 249, 249),
      ),
      obscureText: widget.obscureText ? shouldObscure : widget.obscureText,
    );
  }
}
