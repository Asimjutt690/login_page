// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_page/forget.dart';
import 'package:login_page/signup.dart';
import 'package:flutter/widgets.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// import 'package:firebase_core/firebase_core.dart';


// import 'package:flutter_signin_button/flutter_signin_button.dart';

// import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  get style => null;

  @override
  Widget build(BuildContext context) {
  
  //     final TextEditingController emailcontroller = TextEditingController();
  //       final TextEditingController passwordcontroller = TextEditingController();
   
  //  // ignore: non_constant_identifier_names
  //  void login() async{
  //    FirebaseAuth auth = FirebaseAuth.instance;
  //    // ignore: unused_local_variable
  //    FirebaseFirestore  db = FirebaseFirestore.instance;
    
 
  //    // ignore: unused_local_variable
  //    final String email = emailcontroller.text;
  //    // ignore: unused_local_variable
  //    final String password = passwordcontroller.text;
  //   try {
  //   // ignore: unused_local_variable
  //   final UserCredential user= await auth.signInWithEmailAndPassword(email: email, password: password);
 
  // // final data= snapshot.data();

  // //  Navigator.of(context).pushNamed("/home",arguments: data);
  //   // print("User is logged in");
  //   // print(data["usernmae"]);
  //   // print(data["email"]);
  //   } 
  //   on FirebaseAuthException catch (e){
  //     if (e.code== 'weak password'){
  //    print("The passward provided is too weak");
  //     }else if(e.code=='email-already-in-use' ){
  //     print("The account already existsfor that email");
  //   }
    
    

  //    // ignore: non_constant_identifier_names
  //   showDialog(context: context, builder: (BuildContext content){
  //    return AlertDialog(content: Text(e.code), );
  //   });
  //    print(e);
  //  }catch(e) {
  //     print("error");
  //     }
  //  }
    return Scaffold(
   
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/pic1.jpg',
                height: 200,
              ),
            ),
            Text("Welcome back!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Text("Log in to your existant account",
                style: TextStyle(
                  fontSize: 12,
                )),
            SizedBox(height: 50),
            Container(
                width: MediaQuery.of(context).size.width * .65,
                child: TextField(
                // controller: emailcontroller,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Email',
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: Colors.blue, ),
                        ),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                  ),
                )),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width * .65,
              child: TextField(
              // controller: passwordcontroller,
                decoration: InputDecoration(
                
                  hintText: 'Password',
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.green, width: 1.0),
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(color: Colors.blue, ),
                      ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * .65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgotpassword() )); 
                    } ,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Container(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.blue)))),
                        child: Text(
                          "Login",
                          style: TextStyle(),
                        ))),
              ],
            ),
            Text("Or connect using"),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                   width: MediaQuery.of(context).size.width*0.3,
                  child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all(Color(0xFF0D47A1),) ,
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6.3),
                                        side: BorderSide(color: Colors.blue)))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.facebook),
                                  SizedBox(width: 5,),
                                Text(
                                  "Facebook",
                                  style: TextStyle(),
                                ),
                              ],
                            )),
                ),
               SizedBox(width: 15,),
              Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width*0.3,
                  child: ElevatedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all(Colors.red) ,
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6.3),
                                        side: BorderSide(color: Colors.red)))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Icon(MdiIcons.google),
                                  SizedBox(width: 5,),
                                Text(
                                  "Google",
                                  style: TextStyle(),
                                ),
                              ],
                            )),
                ), ],),
                 SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(width: 3,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup() ));
                      },
                      child: Text("Sign Up",style: TextStyle(color: Color(0xFF0D47A1),),)),
                  ],
                ),
                  SizedBox(height: 25,),
        
         
          ]),
        ),
      ),
    );
  }
}
