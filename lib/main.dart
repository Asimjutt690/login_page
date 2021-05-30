import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   home: Scaffold(
    appBar: AppBar(
     
      title: 
      Center(child:   Text('Login Page',style: TextStyle(color: Colors.white),
      )),),
     body:
      Center(
        child: Column(
         
         children:[
           SizedBox(height:50),
           Container( 
             width: 200, 
             child: TextField( decoration: InputDecoration(
              fillColor: Colors.white,
               labelText: ' username',
               focusedBorder:OutlineInputBorder(
                 borderSide: const BorderSide(color: Colors.green, width: 2.0),
             borderRadius: BorderRadius.circular(60.0),
          ),
          enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(60.0)) ),
        prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.green,
                ),      
  ),

             )
             ),
             SizedBox(height:30),
             Container( 
             width: 200, 
             child: TextField(decoration: InputDecoration(
             labelText: 'Password',
            focusedBorder:OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green, width: 2.0),
             borderRadius: BorderRadius.circular(60.0),
          ),
           enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(60.0)) ),
           prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.green,
                ),
              
             ),

             ),
            
             ),
              
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(height:200),
               
                ElevatedButton(onPressed:(){}, child: Text("Login", style: TextStyle(),)),
              SizedBox(width:15),
             ElevatedButton(onPressed:(){}, child: Text("Sinup", style: TextStyle(),))
             
             ],),
             
             
             
                      
            
             ]),
             
     ),
     
     )
     );
  }
}     
      
