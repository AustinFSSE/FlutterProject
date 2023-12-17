import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  final Function()? onTap;

  const SignIn({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),
        child: const Center(
          child: Text(
            'Sign In',
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
