import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  late String _name;
  late String _email;
  late String _phoneNumber;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
        decoration: const InputDecoration(labelText: 'Name'),
        validator: (value) {
          if (value!.isEmpty) {
            return "Name is required";
          }
        },
        onSaved: (value) {
          value = _name;
        });
  }

  Widget _buildEmail() {
    return TextFormField(
        decoration: const InputDecoration(labelText: 'Email'),
        validator: (value) {
          if (value!.isEmpty) {
            return "Email is required";
          }
        },
        onSaved: (value) {
          value = _email;
        });
  }

  Widget _buildphoneNumber() {
    return TextFormField(
        decoration: const InputDecoration(labelText: 'Phone Number'),
        validator: (value) {
          if (value!.isEmpty) {
            return "Phone number is required";
          }
        },
        onSaved: (value) {
          value = _phoneNumber;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: Colors.blueGrey,
        title: const Text('Form'),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Form(
          child: Column(
            children: [
              _buildName(),
              _buildEmail(),
              _buildphoneNumber(),
              const SizedBox(height: 50),
              ElevatedButton(
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
