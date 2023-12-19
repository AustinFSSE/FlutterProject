import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginComplete extends StatelessWidget {
  LoginComplete({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signOut,
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Logged in!')],
        ),
      ),
    );
  }
}
