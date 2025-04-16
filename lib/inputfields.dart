import 'package:flutter/material.dart';

class formWidget extends StatelessWidget {
  const formWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Example"),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Name",
                  labelText: "Name"
                ),
              ),
            ],
            ),
        ),
          )
    );
  }
}