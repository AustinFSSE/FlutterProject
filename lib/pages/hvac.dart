import 'package:flutter/material.dart';

class HVACForum extends StatelessWidget {
  const HVACForum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[300],
      body: SingleChildScrollView(
        child: Container(
          child: const Row(
            children: [
              Text(
                'HVAC Forum',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
