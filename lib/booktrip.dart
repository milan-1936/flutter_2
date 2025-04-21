import 'package:flutter/material.dart';

class BookTrip extends StatelessWidget {
  const BookTrip({super.key});

  Widget buttons({required String name, required IconData icon}) {
    return Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                   
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 40,
                          icon,
                          color: Colors.greenAccent.shade700,
                        ),
                        Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                    ),

                  );
  }

  Widget selection ({required String name,  IconData? icon, Color? color, Border? border}){
    return Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                      color: color,
                      border: border

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(icon),
                          Center(child: Text(name)),
                        ],
                      )
                      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              // Top Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          child: Image.asset(
                            'assets/images/circleavatar.png',
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(Icons.error, color: Colors.red);
                            },
                          ),
                          ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Hello Munxe",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                            ),

                          Row(
                            children: [
                              Icon(
                                Icons.place_outlined,
                                color: Colors.greenAccent.shade700,
                              ),
                              Text("Manduari, India"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Badge(child: Icon(Icons.notifications_none)),
                ],
              ),

              // Second Row
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.blueGrey.shade500,
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search, color: Colors.grey.shade500),
                  suffixIcon: Icon(
                    Icons.tune,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),

              // Third Row Hotels, flight, bus, train
              SizedBox(
                height: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buttons(name: "Hotels", icon: Icons.business_outlined),
                    buttons(name: "Flight", icon: Icons.flight),
                    buttons(name: "Bus", icon:Icons.bus_alert_sharp),
                    buttons(name:"Train", icon: Icons.train)
                  ],
                ),
              ),

              // Badge
              Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                    colors: [Colors.green.shade100, Colors.greenAccent.shade200],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 230,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                            child: Column(
                              children: [
                                Text(
                                  "Travel Smart, Stay Comfortable",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Plan your trip, book your stay and get moving, all in one app ",
                                ),
                              ],
                            ),
                          ),
                          FilledButton(
                            onPressed: () {
                              // Add your onPressed logic here
                            },
                            child: Text(
                              "Get Started",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: 140,
                      child: Image.asset('assets/images/photo.png'),
                    )

                  
                  ],
                ),
              ),

              // gap
              SizedBox(
                height: 20,
                width: double.infinity,
              ),

              // listview
              Container(
                width: double.infinity,
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    selection(name: "All", color: Colors.blue),
                    selection(name: "Hotels", icon:Icons.business),
                    selection(name: "Resrots", icon:Icons.villa),
                    selection(name: "Other Things", icon: Icons.other_houses_rounded)
                    
                  ],
                ),
              ),


              // Stack
              Container(
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        child: Image.asset(
                          width: double.infinity,
                          'assets/images/hotelroom.png',
                          fit: BoxFit.cover,
                          ),
                      ),
                    ),

                    Positioned(
                      right: 10,
                      top: 5,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.favorite_border),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
