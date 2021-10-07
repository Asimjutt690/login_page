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
      
    );
  }
}