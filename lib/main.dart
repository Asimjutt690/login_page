import 'package:flutter/material.dart';
import 'package:login_page/splashscreen.dart';
// import 'Home.dart';
// import 'bottomnavbar.dart';

// import 'login.dart';



void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  //  theme:ThemeData(
  //    primarySwatch: Colors.brown
  //  ),
   
   home:

  // BottomNavBar()
  // Forgotpassword()
  // Login()
   Splashscreen(),             
     );

  }
}
