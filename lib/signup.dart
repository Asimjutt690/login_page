// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
 

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
//  final TextEditingController usernamecontroller = TextEditingController();
//       final TextEditingController emailcontroller = TextEditingController();
//       final TextEditingController phonecontroller = TextEditingController();
//         final TextEditingController passwordcontroller = TextEditingController();
//          final TextEditingController confirmpasswordcontroller = TextEditingController();
//    void signup() async{
//      FirebaseAuth auth = FirebaseAuth.instance;
//      // ignore: unused_local_variable
//      FirebaseFirestore  db = FirebaseFirestore.instance;
    
//      final String username = usernamecontroller.text;
//      // ignore: unused_local_variable
//      final String email = emailcontroller.text;
//      final String phone = phonecontroller.text;

//      // ignore: unused_local_variable
//      final String password = passwordcontroller.text;
//     final String confirmpassword = passwordcontroller.text;
//     try {
//       final UserCredential user =   await auth.createUserWithEmailAndPassword(email: email ,password: password);
//         var usernameController;
//         await db.collection("users").doc(user.user.uid).set({
//          "username":usernameController.text,
//          "email":emailcontroller.text,
//         "phone":phonecontroller.text,
//         "password":passwordcontroller.text,
//         "confirmpassword":confirmpasswordcontroller.text,
        
//           });
// print("User is registered");

//     }catch(e){
//       print("error");
//     }
  
//    }



    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
          SizedBox(height: 35,),
          Row(
            children: [
                GestureDetector(
              onTap: Navigator.of(context).pop,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(Icons.arrow_back,color:Colors.black,size: 28,),
              )),
              Padding(
                padding: const EdgeInsets.only(left:75),
                child: Text("Let's Get Started!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28)),
              ),
            ],
          ),
          SizedBox(height: 10,),
          
          Center(child: Text("Create an account to Newsapp to get all features",style: TextStyle(fontSize:15))),
          SizedBox(height: 30,),
      
          Container(
                  
                  width: MediaQuery.of(context).size.width * .70,
                  child: TextField(
                    // controller: usernamecontroller,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Username',
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
                        Icons.person,
                        color: Colors.blue,
                      ),
                    ),
                  )),
                  SizedBox(height: 15,),
              Container(
               width: MediaQuery.of(context).size.width * .70,
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
                                SizedBox(height: 15,),
      
              Container(
                  width: MediaQuery.of(context).size.width * .70,
                  child: TextField(
                    // controller: phonecontroller,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Phone',
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
                        Icons.phone,
                        color: Colors.blue,
                      ),
                    ),
                  )),
                  SizedBox(height: 15,),
              Container(
                  width: MediaQuery.of(context).size.width * .70,
                  child: TextField(
                    // controller: passwordcontroller,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Password',
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
                        Icons.lock_clock,
                        color: Colors.blue,
                      ),
                    ),
                  )),
                  SizedBox(height: 15,),
              Container(
                  width: MediaQuery.of(context).size.width * .70,
                  child: TextField(
                    // controller: emailcontroller,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Confirm Password',
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
                        Icons.lock_clock,
                        color: Colors.blue,
                      ),
                    ),
                  )),
            SizedBox(height: 20,),
          // ElevatedButton(onPressed: (){}, child: Text("Create")),
                      Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Container(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: (){},
                        // signup,
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.blue)))),
                        child: Text(
                          "Create",
                          style: TextStyle(),
                        ))),
              ],
            ),
          
          
          
           Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      SizedBox(width: 3,),
                      GestureDetector(
                        onTap: Navigator.of(context).pop,
                        child: Text("Login here",style: TextStyle(color: Color(0xFF0D47A1),),)),
                    ],
                  ),
                    SizedBox(height: 25,),
          
        ],),
      ),
      
    );
  }
}

class Var {
}