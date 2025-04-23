import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  final String lauda;
  const SecondScreen({required this.name, required this.lauda, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is Second Screen")),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: [
              Text(name),
              Text(lauda)
            ],
          ),
        ),
      ),
    );
  }
}