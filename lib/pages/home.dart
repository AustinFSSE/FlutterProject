import 'package:constructionapp/components/unique_service.dart';
import 'package:constructionapp/pages/auth_page.dart';
import 'package:constructionapp/pages/electrical.dart';
import 'package:constructionapp/pages/hvac.dart';
import 'package:constructionapp/pages/plumbing.dart';
import 'package:constructionapp/pages/roofing.dart';
import 'package:constructionapp/pages/services.dart';
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
            const SizedBox(
              height: 10,
            ),
            _services(),
            const SizedBox(
              height: 10,
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
    children: [
      Column(
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
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'General',
                      style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ServicesOffered(),
              ],
            ),
          )
        ],
      ),
    ],
  );
}
