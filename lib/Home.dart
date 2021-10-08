import 'package:flutter/material.dart';
import 'login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Home"),
         
          ),
          actions:[
           GestureDetector(
             onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login() ));
             },
             child: Padding(
               padding: const EdgeInsets.only(right: 10),
               child: Icon(Icons.login),
             ),
           )
         ],
          bottom: TabBar(
              // controller: TabController(vsync: this, length: 4),
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Theme.of(context).colorScheme.onPrimary,
              tabs: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Tab(child: Text("All")),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Tab(child: Text("Headlines")),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Tab(child: Text("Popular News")),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Tab(child: Text("Sports News")),
                ),
              ]),
        ),
        body: 
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              SizedBox(height: 150,),
              Text("Sir, there was a problem with my laptop,",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("so I didn't install a Firebase and Authentication"),
              Text("Sorry!"),
            

            ],),
          ),
        drawer: Container(
          width: 360,
          child: Drawer(
            child: ListView(children: [
            Container(
              width: 360,
              child: DrawerHeader(
                decoration:BoxDecoration(
                  image:DecorationImage(
                    image:AssetImage("assets/pic3.jpg"),
                     fit: BoxFit.cover
                     ) ),
               
               child:Column(
                
                 crossAxisAlignment:CrossAxisAlignment.start,
                 children: [
                   CircleAvatar(
                     radius: 40,
                        backgroundImage: AssetImage("assets/pic2.jpg",),
                        
                        ),
                   
                //  Image.asset("assets/pic2.jpg",height: 100,),
        
                 Text("Saim Jutt",style: TextStyle(fontSize: 15,color: Colors.white),),
                   Row(children: [
                     Text("anokhajutt679@gmail.com",style: TextStyle(fontSize: 15,color: Colors.white),),
                     Icon(Icons.arrow_drop_down,color: Colors.white,),
                   ],)
               ],) ),
            ),
        
        
            ],),
          ),
        ),


      ),
    );
  }
}
