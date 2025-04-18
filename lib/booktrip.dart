import 'package:flutter/material.dart';

class BookTrip extends StatelessWidget {
  const BookTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(child: Image.asset('assets/images/pp.png')),
                      Column(
                        children: [
                          Text("Hello Munxe"),
                          Row(
                            children: [
                              Icon(
                                Icons.pin_drop_outlined,
                                color: Colors.greenAccent.shade700,
                              ),
                              Text("Location"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.refresh),
                ],
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search, color: Colors.grey.shade500),
                  suffixIcon: Icon(
                    Icons.display_settings,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,

                    child: Center(
                      child: Icon(
                        size: 40,
                        Icons.home_work_outlined,
                        color: Colors.greenAccent.shade700,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 100,
                    width: 100,

                    child: Center(
                      child: Icon(
                        size: 40,
                        Icons.flight_outlined,
                        color: Colors.greenAccent.shade700,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 100,
                    width: 100,

                    child: Center(
                      child: Icon(
                        size: 40,
                        Icons.bus_alert_outlined,
                        color: Colors.greenAccent.shade700,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 100,
                    width: 100,

                    child: Center(
                      child: Icon(
                        size: 40,
                        Icons.train,
                        color: Colors.greenAccent.shade700,
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.green.shade600,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Column(children: [Text("This is Random Text")]),
                  ],
                ),
              ),

              Container(
                height: 200,
                width: double.infinity,
                color: Colors.red,
                child: Stack(
                  
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Image.asset(
                        width: double.infinity,
                        'assets/images/pp.png',
                        fit: BoxFit.cover,
                        ),
                        
                    ),
                    Positioned(
                      right: 10,
                      top: 5,
                      child: Container(child: Icon(Icons.linked_camera_sharp)),
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
