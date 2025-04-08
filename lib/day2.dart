import 'package:flutter/material.dart';

class Day2 extends StatelessWidget {
  const Day2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Making Fun Layouts with Flutter")),
      ),
      body:Center(
        child: Container(
          height:350,
          width: 350,
          decoration:BoxDecoration(
            color:Colors.amber,
          ), 
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
              Container(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height:100,
                      width:200,
                      color: Colors.red.shade100,
                    ),
                    Text("Text Here",style: TextStyle(color: Colors.black,),),
                    Container(
                      height:100,
                      width:200,
                      color:Colors.blue.shade300,
                    ),
                  ],)
              ),
              Container(
              ),
            ],)
        ),
      )
    );
  }
}