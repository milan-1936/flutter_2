import 'package:flutter/material.dart';

class AssignmentWidget extends StatelessWidget {
  const AssignmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("This is Title"),
      ),
      body:Center(
        child: Container(
          decoration:BoxDecoration(
            color: Colors.amber,
          ),
          child:Center(
            
            child: Row(
              
              children: [
                
                Column(
                  children: [
                    Container(
                      height: 50,
                      width:100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                    ),
                    Text("TExt"),
                    Container(
                      height: 50,
                      width:100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    )
                    
                  ],
                )
              ],
             
              
            
              
                    
            ),
          ),
        ),
      )
      );
  }
}