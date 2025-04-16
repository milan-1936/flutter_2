import 'package:flutter/material.dart';
// import 'package:flutter_2/buttons.dart';
// import 'package:flutter_2/counter_app.dart';
import 'package:flutter_2/sizebox.dart';
// import 'package:flutter_2/assignment.dart';
// import 'package:flutter_2/container_container.dart';
// import 'package:flutter_2/day2.dart';
// import 'package:flutter_2/homepage.dart';
// import 'package:flutter_2/images.dart';monitor

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: SizeBoxes(),
    );
  }
}



