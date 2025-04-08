import 'package:flutter/material.dart';

class Imagess extends StatelessWidget {
  const Imagess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("This is appbar"),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
         
            Image.asset(
              "assets/images/image.png",
             
              ),
              Icon(
                Icons.favorite, 
                color:Colors.red,
                size:90
              ),
          ],),
      ));
  }
}