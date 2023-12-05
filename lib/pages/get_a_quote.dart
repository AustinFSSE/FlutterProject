import 'package:flutter/material.dart';

class GetQuote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submit your Quote today!'),
        centerTitle: true,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        backgroundColor: Colors.orangeAccent[200],
      ),
    );
  }
}
