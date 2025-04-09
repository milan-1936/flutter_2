import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;
  String message = "";

  check() {
    if (counter > 0) {
      message = "Positive";
    } else if (counter < 0) {
      message = "Negative";
    } else {
      message = "Zero";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter Application",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text(message)),
            Container(
              child: Text(
                counter.toString(),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
                check();
              });
              print(counter);
            },
            child: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                counter--;
                check();
              });
            },
            icon: Icon(Icons.minimize),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
