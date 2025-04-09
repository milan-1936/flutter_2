import 'package:flutter/material.dart';

class Homework extends StatelessWidget {
  const Homework({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height:40,
              width:40, 
              decoration: BoxDecoration(             
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black26, width: 2)
              ),
              child: Icon(Icons.arrow_back)
              ),
            Text(
              "Details",
              style: TextStyle(
                fontSize: 18,
                fontWeight:FontWeight.bold,
              ),
              ),
            Container(
              height:40,
              width:40,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.black26, width: 2
                )
              ),
              child: Icon(Icons.favorite_outline_sharp))
          ],
        )
      ),
      body:Container(
        padding: EdgeInsets.only(left:25, right:25, bottom: 10),
        color:Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Image.asset(
                "assets/images/plant.png",
                height:400,
              ),
            ),

            // Ageratum row
            Container(
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text("Ageratum",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color:Colors.black87
                  ),),
                  Row(
                    children:[
                    Icon(Icons.star,
                        color: Colors.greenAccent.shade700,
                        ),
                        Text(
                          "4.8",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "(268 Reviews)",
                          style: TextStyle(
                            color:Colors.black45,
                          )
                          )
                    ] 
                  ),
                  
                ],
              ),
              
            ),
            
            // Description of Ageratum
            Text(
                    "Ageratum is a genus of 40 to 60 tropical and warm tempreature flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most species are native to Central America",
                    style: TextStyle(
                      color: Colors.black87
                    )
                ),

            // Size, and other description row
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  // size |medium
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Size",
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                          ),
                        Text(
                          "Medium",
                          style:TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          )
                          ),
                      ],
                    ),
                  ),
                  
                  // Plant | Orchid
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Plant",
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                          ),
                        Text(
                          "Orchid",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                      ],
                    ),
                  ),
                  
                  // Height | 12.6"
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                          ),
                        Text(
                          "12.6\"",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                      ],
                    ),
                  ),

                  // humidity | 82%
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Humidity",
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                          ),
                        Text(
                          "82%",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight:FontWeight.bold,
                          ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // price vako last row
            Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            color: Colors.black45
                          ),
                          ),
                        Text(
                          "\$39.99",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 22,
                            fontWeight:FontWeight.bold,
                          ),)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left:30, right:30, top:15, bottom:15),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade700,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Text(
                      "Add to Cart",
                      style:TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        
                      ),
                      
                      ),
                  ),
                ],
              ) ,
            )
          ],
          ),
      )
    );
  }
}