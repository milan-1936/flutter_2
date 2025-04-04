import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          height: 500,
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          width:300,
          child:Container(
            child: Center(
              child: Text(
                "Hello containers",
                
              ),
            ),
            
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            height: 200,
            width: 200,
          ),

          ))


    );
  }
}