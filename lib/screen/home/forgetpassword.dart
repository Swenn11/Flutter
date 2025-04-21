import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forgot Password')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Please enter your email to reset your password.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle password recovery logic
                Navigator.pop(context);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
