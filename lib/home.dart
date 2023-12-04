import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 48, 58, 148),
      appBar: appBar(),
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
          child: Text('Get a Quote'),
          style: ElevatedButton.styleFrom(foregroundColor: Colors.orange, backgroundColor: const Color.fromARGB(255, 238, 238, 238), padding: const EdgeInsets.all(10.0)),
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
}
