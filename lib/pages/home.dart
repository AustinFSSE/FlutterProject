import 'package:Constructionapp/pages/customer_support.dart';
import 'package:Constructionapp/pages/login_page.dart';
import 'package:Constructionapp/pages/get_a_quote.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[400],
        elevation: 0,
        title: const Text('Contracting, USA'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                // do something
              },
              icon: const Icon(Icons.share)),
          PopupMenuButton(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              const PopupMenuItem(value: 0, child: Text('Get a Quote')),
              const PopupMenuItem(
                value: 1,
                child: Text('Create an Account'),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text(
                  'Having an Issue?',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => GetQuote()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Login()),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CustomerSupport()),
        );
        break;
    }
  }
}
