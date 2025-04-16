import 'package:flutter/material.dart';

class formWidget extends StatefulWidget {
   formWidget({super.key});

  

  @override
  State<formWidget> createState() => _formWidgetState();
}

class _formWidgetState extends State<formWidget> {
  final GlobalKey<FormState> _nameFormKey = GlobalKey();
  bool switchValue = true;
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Example"),
      ),
      body: Form(
        key: _nameFormKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "Username Haan na vaneko";
                  }else{
                    return null;
                  }
                },
                onSaved: (value){
                    print(value!);
                },
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Name",
                  labelText: "Name"
                ),
              ),

              FilledButton(
                onPressed: (){
                  if(!_nameFormKey.currentState!.validate()){
                    return;
                  }
                  _nameFormKey.currentState!.save();
                },
                child: Text("Submit"),
              ),

              Switch(
                value: switchValue, 
                onChanged: (value){
                  setState((){
                    switchValue = !switchValue;
                  });
              },
              ),

              Checkbox(
                value: checkedValue, 
                onChanged: (value) {
                  setState((){
                    checkedValue = value ?? false;
                  });
              }
              ),


            
            ],
            ),
        ),

          )
    );
  }
}