import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  static const routeName = '/forget_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
      ),
      body: const Center(
        child: Text('Contact you admin'),
      ),
    );
  }
}
