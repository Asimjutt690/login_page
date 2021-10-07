import 'package:flutter/material.dart';
import 'package:login_page/Home.dart';
import 'package:login_page/search.dart';

import 'fav.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({ Key? key }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  Widget currentScreen = Home();
  var _currentIndex = 0;

//  late TabController tabController;

  // ignore: must_call_super
  void initState() {
    // tabController =
    //     TabController(length: 4, vsync: this, initialIndex: 0);
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
    //  DefaultTabController(
          // length: 4,
          // child: 
          Scaffold(
      
        body:
        // Text("1"), 
        PageStorage(bucket: PageStorageBucket(), child: currentScreen),
        
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: Theme.of(context).colorScheme.onPrimary,
          unselectedItemColor:
              Theme.of(context).colorScheme.onPrimary.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
              value == 0
                  ? currentScreen = Home()
                  : value == 1
                      ? currentScreen = Search()
                          : currentScreen = Fav();
            });
          },
          items: [
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text('Home'),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text('Search'),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text('Favourite'),
              icon: Icon(Icons.favorite),
            ),
          ],
        // ),
      ),
    );
  }}