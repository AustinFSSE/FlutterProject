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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("This email is currently logged in:\n${user.email!}")),
          ],
        ),
      ),
    );
  }
}
