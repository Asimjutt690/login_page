import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class Fav extends StatefulWidget {
  const Fav({ Key? key }) : super(key: key);

  @override
  _FavState createState() => _FavState();
}

class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
      title: Center(child: Text("Favorite")), 
      actions: [
         Padding(
               padding: const EdgeInsets.only(right: 10),
               child: Icon(MdiIcons.heart),
             ),
      ],
      
      
      ),
      body: 
Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Container(
                  
                  width: MediaQuery.of(context).size.width *1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "search ",
                    suffixIcon: const Icon(Icons.search)
                      ),
                    ),
                  ),
                ),  
              SizedBox(height: 145,),
              Text("Sir, there was a problem with my laptop,",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("so I didn't install a Firebase and Authentication"),
              Text("Sorry!"),
            

            ],),
          ),
    );
  }
}