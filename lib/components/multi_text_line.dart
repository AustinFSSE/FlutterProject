import 'package:flutter/material.dart';

class MultiLineTextField extends StatefulWidget {
  final String hintText;

  const MultiLineTextField({
    super.key,
    required this.hintText,
  });

  @override
  State<MultiLineTextField> createState() => _MultiLineTextFieldState();
}

class _MultiLineTextFieldState extends State<MultiLineTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextFormField(
        minLines: 2,
        maxLines: 10,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          hintText: 'Describe to us your service request...',
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.grey,
          filled: true,
        ),
      ),
    );
  }
}
