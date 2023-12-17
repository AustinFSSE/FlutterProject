import 'package:constructionapp/components/login_text_field.dart';
import 'package:constructionapp/components/sign_in.dart';
import 'package:constructionapp/components/square_tile.dart';
import 'package:constructionapp/pages/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
                    IconButton(
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomePage()),
                            ),
                        icon: const Icon(Icons.home_filled)),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Icon(
                Icons.lock,
                size: 50,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Please Enter your Username and Password',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
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
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SignIn(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('or continue with'),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'assets/icons/google.png'),
                  SizedBox(
                    width: 20,
                  ),
                  SquareTile(imagePath: 'assets/icons/apple.png'),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Not a member?'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Create an Account',
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
