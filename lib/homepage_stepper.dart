import 'package:flutter/material.dart';

class GetStep extends StatefulWidget {
  const GetStep({super.key});

  @override
  State<GetStep> createState() => _GetStepState();
}

class _GetStepState extends State<GetStep> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        steps: const [
          Step(
            title: Text('Enter your First & Last Name'),
            content: Text('Select a service you need'),
          ),
          Step(
            title: Text('Contact Information \n(please mark the best way to contact you)'),
            content: Text('Select a service you need'),
          ),
          Step(
            title: Text('Submit any photos in regards to the situation'),
            content: Text('Select a service you need'),
          ),
          Step(
            title: Text('Describe your situation and what you need done'),
            content: Text('Select a service you need'),
          ),
        ],
      ),
    );
  }
}
