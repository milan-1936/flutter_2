import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "This is app Bar",
          style: TextStyle(
            color:Colors.white,
          )),
        centerTitle:true,
      ),
      body: Padding(
        padding:EdgeInsets.only(top:8, right:16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          
        
          children: [
          Text("This is rorw ",
          style: TextStyle(
            fontSize: 28,
          )),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          )
        ],),
      )

    );
  }
}