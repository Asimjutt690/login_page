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
        body: const Center(
          child: Text('My Page!'),
        ),

        drawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
            children: [
//
              DrawerHeader(
                child: Container(
                  width:MediaQuery.of(context).size.width*1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/pic3.jpg"),
                          fit: BoxFit.cover)
                  ),
                  child: 
                Container(
                  height: 100,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.black87,
                      child: ClipOval(
                        child: Image.asset("assets/pic2.jpg"),
                      ),
                    ),
                  ),
                ),
                // decoration:
                // BoxDecoration(
                //   color: Colors.blue,
                //   image:
          
                // ),
              ),

             
            ],
          ),
        ),
        
      ),
    );
  }
}
