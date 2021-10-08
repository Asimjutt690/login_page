import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
      leading: Text(""),     
      title: Center(child: Text("Search")), 
  //  actions: [
  //        Padding(
  //              padding: const EdgeInsets.only(right: 10),
  //              child: Icon(Icons.search)
  //            ),
  //     ],
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