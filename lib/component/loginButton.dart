import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;

  const LoginButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          minimumSize: const Size.fromHeight(50),
        ),
        child: const Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
