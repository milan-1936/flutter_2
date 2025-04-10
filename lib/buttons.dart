import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is appbar"),
      backgroundColor: Colors.blueAccent,),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              FilledButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                child: Text("Button_1"),
              ),
              FilledButton.tonal(onPressed: () {}, child: Text("Button2")),
              FilledButton.tonalIcon(
                onPressed: () {},
                label: Text("Add"),
                icon: Icon(Icons.add),
              ),
          
              IconButton.filledTonal(onPressed: () {}, icon: Icon(Icons.add)),
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              TextButton(onPressed: () {}, child: Text("This is text button")),
              ElevatedButton(onPressed: () {print("Bhugol muji haat na xo");}, child: Icon(Icons.back_hand)),
          
              FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          
              GestureDetector(
                onDoubleTap: (){
                  print("Hello");
                },
                onLongPress: (){
                  print("LongPressed");
                },
                onLongPressCancel: (){
                  print("Long press garna kina xois vai");
                },
                child: Container(
                  height: 200,
                  width:200,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              InkWell(
                onTap: (){
                  print("INkwell ma ontap hunxa");
                },
                child: Container(
                    height: 200,
                    width:200,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
