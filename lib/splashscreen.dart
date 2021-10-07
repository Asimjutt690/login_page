import 'package:flutter/material.dart';
import 'dart:async';


import 'bottomnavbar.dart';


class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  var splashscreenTimer;
  var myTimer = 0;

  timerPlay() {
    splashscreenTimer =
        new Timer.periodic(new Duration(milliseconds: 1000), (timer) {
      myTimer++;
      // ignore: unnecessary_brace_in_string_interps
      print("timer------->${myTimer}");
    if (myTimer == 3) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()));
      splashscreenTimer.cancel();
    }
    });
    
  }

  @override
  Widget build(BuildContext context) {
    timerPlay();
    return Scaffold(
        body: Center(
      // child: Container(
      //       width: MediaQuery.of(context).size.width * 0.4,
      //       height: 40,
      //       child: ElevatedButton(
      //         onPressed:timerPlay,
      //         child: Text("Timer Start"),
      //       ),
      //     ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: 
              // Text("MY NEWS APP")
            Container(
                      
                      
              child: Image.asset('kati3.png',
                   
                   
              //      fit:BoxFit.fill  ),

               
            
              ),
    )),

    // Positioned(
      // top: MediaQuery.of(context).size.height*0.9,
      // child: 
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text("By Saim Jutt",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
      )
      // ),

        ],
      )));
  }
}
