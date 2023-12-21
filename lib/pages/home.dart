import 'package:constructionapp/pages/auth_page.dart';
import 'package:constructionapp/pages/electrical.dart';
import 'package:constructionapp/pages/hvac.dart';
import 'package:constructionapp/pages/plumbing.dart';
import 'package:constructionapp/pages/roofing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:constructionapp/pages/login_page.dart';
import 'package:constructionapp/pages/forms_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentStep = 0;
  continueStep() {
    if (currentStep < 3) {
      setState(() {
        currentStep = currentStep + 1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlsBuilder(context, details) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: ElevatedButton(
            onPressed: details.onStepContinue,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange[400],
              foregroundColor: Colors.black,
              elevation: 4,
            ),
            child: const Text('Next'),
          ),
        ),
        ElevatedButton(
          onPressed: details.onStepCancel,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.deepOrange[400],
            elevation: 8,
            backgroundColor: Colors.black,
          ),
          child: const Text('Back'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange[400],
        shadowColor: Colors.black,
        elevation: 4,
        title: const Text('Contracting, USA'),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                // do something
              },
              icon: const Icon(Icons.share),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AuthPage(),
              ),
            ),
            icon: const Icon(Icons.person),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Need to login?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: Text(
                      'Login NOW!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange[400],
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.75),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            _services(),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 10.0),
                    child: Text(
                      'Not sure which service you need?',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Poppons', fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FormScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange[400],
                      foregroundColor: Colors.black,
                      elevation: 8,
                    ),
                    child: const Text(
                      'Describe it to us!',
                      style: TextStyle(fontFamily: 'Poppins', fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                children: [
                  const Text(
                    'Follow these steps to complete your request',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Stepper(
                    currentStep: currentStep,
                    onStepContinue: continueStep,
                    onStepCancel: cancelStep,
                    onStepTapped: onStepTapped,
                    controlsBuilder: controlsBuilder,
                    steps: [
                      Step(
                        title: const Text('Enter your First & Last Name'),
                        content: const Text('Select a service you need'),
                        isActive: currentStep >= 0,
                        state: currentStep >= 0 ? StepState.complete : StepState.disabled,
                      ),
                      Step(
                        title: const Text('Contact Information \n(please mark the best way to contact you)'),
                        content: const Text('Select a service you need'),
                        isActive: currentStep >= 1,
                        state: currentStep >= 1 ? StepState.complete : StepState.disabled,
                      ),
                      Step(
                        title: const Text('Submit any photos in regards to the situation'),
                        content: const Text('Select a service you need'),
                        isActive: currentStep >= 2,
                        state: currentStep >= 2 ? StepState.complete : StepState.disabled,
                      ),
                      Step(
                        title: const Text('Describe your situation and what you need done'),
                        content: const Text('Select a service you need'),
                        isActive: currentStep >= 3,
                        state: currentStep >= 3 ? StepState.complete : StepState.disabled,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container _locationValidation() {
  // ignore: avoid_unnecessary_containers
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Enter your Address that needs Service',
            style: TextStyle(
              color: Color.fromARGB(255, 129, 128, 128),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: const EdgeInsets.all(8),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(1),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: const BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Column _services() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Text(
          'Services',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      _locationValidation(),
      Container(
        margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Builder(builder: (context) {
                    return ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HVACForum(),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset('assets/icons/HVAC.svg'),
                      ),
                    );
                  }),
                ),
                const Text('HVAC')
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Builder(builder: (context) {
                    return ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PlumbingForum(),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset('assets/icons/plumbing.svg'),
                      ),
                    );
                  }),
                ),
                const Text('Plumbing')
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Builder(builder: (context) {
                    return ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RoofingForum(),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset('assets/icons/roofing.svg'),
                      ),
                    );
                  }),
                ),
                const Text('Roofing')
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Builder(
                    builder: (context) {
                      return ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ElectricalForum(),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/electrical.svg'),
                        ),
                      );
                    },
                  ),
                ),
                const Text('Electrical')
              ],
            ),
          ],
        ),
      )
    ],
  );
}
