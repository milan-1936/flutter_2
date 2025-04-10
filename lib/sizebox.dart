import 'package:flutter/material.dart';

class SizeBoxes extends StatelessWidget {
  const SizeBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Title ho Size Box kO")
        ),
        body:SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("I am Milan"),
            ],
          ),
        )
        );

  }
}