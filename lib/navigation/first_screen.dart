import 'package:flutter/material.dart';
import 'package:flutter_2/navigation/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final GlobalKey <FormState> _nameFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Array of Fruits"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Fruit",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please provide fruit name";
                        } else if (value.length < 3) {
                          return "please provide valid fruit name";
                        } else {
                          return null;
                        }
                      },
                    ),

                    FilledButton(onPressed: () {
                      
                    }, child: Text("Add")),
                  ],
                ),
              ),

              // create the button 
            ],
          ),
        )
        ),
    );
  }
}