import 'package:constructionapp/pages/home.dart';
import 'package:flutter/material.dart';

class HVACForum extends StatelessWidget {
  const HVACForum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton.filled(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              ),
                              icon: const Icon(Icons.home_filled, color: Colors.black),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'HVAC Forum',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.50),
                                    blurRadius: 25,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Column(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
