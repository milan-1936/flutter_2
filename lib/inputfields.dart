import 'package:flutter/material.dart';

class formWidget extends StatefulWidget {
   formWidget({super.key});

  final GlobalKey<FormState> _nameFormKey = GlobalKey();

  @override
  State<formWidget> createState() => _formWidgetState();
}

class _formWidgetState extends State<formWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Example"),
      ),
      body: Form(
        key: GlobalKey(),
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
              FilledButton(
                onPressed: (){

                },
                child: Text("Submit"),
              ),
            ],
            ),
        ),
        
          )
    );
  }
}