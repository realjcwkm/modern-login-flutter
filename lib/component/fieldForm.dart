import 'package:flutter/material.dart';

class FieldForm extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscuredText;

  const FieldForm({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscuredText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: "Username",
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}
