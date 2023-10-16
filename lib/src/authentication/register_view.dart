import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static const routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create account'),
      ),
      body: const Center(
        child: Text('To Implement'),
      ),
    );
  }
}
