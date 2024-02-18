import 'package:flutter/material.dart';
import 'package:custom_buttons/widgets/custom_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text('Custom Buttons in Flutter'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Custom Sign-in Button',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            CustomButton(
              onClick: () {
                print('Sign in Button Clicked!');
              },
              colorsList: const [Colors.pink, Colors.purple],
              text: 'Sign in',
            ),
            const SizedBox(height: 20),
            const Text(
              'Custom Sign-up Button',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            CustomButton(
              onClick: () {
                print('Register Button Clicked!');
              },
              colorsList: const [Colors.blue, Colors.teal],
              text: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
