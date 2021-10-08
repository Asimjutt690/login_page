import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.black,
                        size: 30,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text("Forgot Password",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
                ),
              ],
            ),
            Image.asset("assets/pic4.png",height: 200,),
            Text(
              "Did something forget their password?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "That's ok....",
            ),
            SizedBox(
              height: 5,
            ),
            Text("Just enter the username and email you've used to"),
            SizedBox(
              height: 5,
            ),
            Text("register with us and we'll send you reset link!"),
          SizedBox(
              height: 10,
            ),
          Container(
                  width: MediaQuery.of(context).size.width * .65,
                  child: TextField(
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
                          borderSide: BorderSide(color: Colors.blue, ),),
                      prefixIcon: const Icon(
                        Icons.accessibility,
                        color: Colors.blue,
                      ),
                    ),
                  )),
                  SizedBox(
              height: 10,
            ),
                  Container(
                  width: MediaQuery.of(context).size.width * .65,
                  child: TextField(
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
          
          SizedBox(
              height: 10,
            ),
           Container(
                height: 40,
                width: MediaQuery.of(context).size.width * .65,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue)))),
                    child: Text(
                      "Submit",
                      style: TextStyle(),
                   ))),
                    SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
