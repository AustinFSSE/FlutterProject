import 'package:constructionapp/components/login_text_field.dart';
import 'package:constructionapp/pages/home.dart';
import 'package:constructionapp/pages/login_page.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({super.key});

  final emailController = TextEditingController();
  final lastnameController = TextEditingController();
  final firstnameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade400,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          ),
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Create Your Account',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    IconButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      ),
                      icon: const Icon(
                        Icons.home_filled,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Icon(
                Icons.person,
                size: 50,
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: firstnameController,
                hintText: 'First Name',
                obsureText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                controller: lastnameController,
                hintText: 'Last Name',
                obsureText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obsureText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obsureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
