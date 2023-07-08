import 'package:flutter/material.dart';

class rentals extends StatelessWidget {
  const rentals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Text('Write a message!'),
      ),
    ));
  }
}
