import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 58, 148),
      appBar: appBar(),
      body: ListView(
        children: <Widget>[
          _searchField(),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      backgroundColor: Colors.orange,
      elevation: 0.0,
      centerTitle: false,
      title: const Text(
        'Ask a Professional',
        style: TextStyle(color: Color.fromARGB(255, 48, 58, 148), fontSize: 18, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(foregroundColor: Colors.orange, backgroundColor: const Color.fromARGB(255, 238, 238, 238), padding: const EdgeInsets.all(10.0)),
          child: Text('Get a Quote'),
        ),
        IconButton(
          color: Color.fromARGB(255, 48, 58, 148),
          icon: Icon(Icons.notifications),
          onPressed: () {},
        ),
        PopupMenuButton(
            padding: EdgeInsets.only(right: 20),
            color: Colors.white,
            itemBuilder: (context) => [
                  const PopupMenuItem(
                    child: Text(
                      'Mission Statement',
                      style: TextStyle(color: Color.fromARGB(255, 48, 58, 148)),
                    ),
                  ),
                  const PopupMenuItem(
                    child: Text(
                      'Specialist criteria',
                      style: TextStyle(color: Color.fromARGB(255, 48, 58, 148)),
                    ),
                  ),
                  const PopupMenuItem(
                    child: Text('Get a quote', style: TextStyle(color: Color.fromARGB(255, 48, 58, 148))),
                  )
                ]),
      ],
    );
  }

  Container _searchField() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.20), blurRadius: 20, spreadRadius: 0.0)]),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          hintText: 'Looking for a specific company?',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ),
    );
  }
}
