import 'package:constructionapp/pages/home.dart';
import 'package:constructionapp/pages/login_complete.dart';
import 'package:constructionapp/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return LoginComplete();
          } else {
            return Login();
          }
        },
      ),
    );
  }
}
