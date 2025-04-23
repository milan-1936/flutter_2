import 'package:flutter/material.dart';
import 'package:flutter_2/navigation/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is first screen"),
              FilledButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondScreen(name: "Demo", lauda: "Arun",)),
                  );
                },
                child: Text("Go to Second Page")),
            ],
          ),
        )),
    );
  }
}