// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;
  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(188, 40, 73, 77),
        centerTitle: true,
        title: Text(
          "الَّذِينَ آمَنُوا وَتَطْمَئِنُّ قُلُوبُهُمْ بِذِكْرِ اللَّهِ",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 8, 34, 52),

      body:  SingleChildScrollView(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text("الَّذِينَ آمَنُوا وَتَطْمَئِنُّ قُلُوبُهُمْ بِذِكْرِ اللَّهِ",style: TextStyle(fontSize: 25),),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              
              children: [
                Container(
                   width: MediaQuery.of(context).size.width / 1.50,
                  height: MediaQuery.of(context).size.width / 1.50,
                   decoration: BoxDecoration(
                      color: Color.fromARGB(255, 1, 20, 52),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 9),
                            color: Colors.white.withOpacity(.5),
                            spreadRadius: 15,
                            blurRadius: 17)
                      ]),
                  
                 
                 
                  child: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Transform.translate(
                  offset: Offset(0, -0),
                  child: Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 1, 20, 52),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              color: Colors.white.withOpacity(.5),
                              spreadRadius: 5,
                              blurRadius: 5),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => counter(),
                          child: Container(
                            decoration: BoxDecoration(
                                color:  Color.fromARGB(255, 1, 20, 52),
                                shape: BoxShape.circle),
                          ),
                          style: ElevatedButton.styleFrom(
                              maximumSize: Size(80, 80)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => reset(),
                              child: Icon(
                                Icons.wifi_protected_setup_sharp,
                                size: 33,
                              ),
                              style: ElevatedButton.styleFrom(
                                  foregroundColor: Color.fromARGB(255, 2, 73, 71), elevation: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
