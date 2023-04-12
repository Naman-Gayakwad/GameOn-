import 'package:flutter/material.dart';
import 'package:game_on/screens/coach.dart';
import 'package:game_on/screens/contest.dart';
import 'package:game_on/screens/home.dart';
import 'package:game_on/screens/learn&practice.dart';
import 'package:game_on/screens/news.dart';
import 'package:game_on/screens/store.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    Home(), 
    LearnPractice(), 
    Contest(), 
    Coach(), 
    Store(), 
    News()

    ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GameON"),
        titleTextStyle: TextStyle(fontSize: 25 ,color: Colors.black),
  leading: GestureDetector(
      onTap: () {  },
      child: const Icon(
        Icons.account_circle, 
        size: 30,
        color: Colors.black, 
      ),
  ),
  actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: const Icon(
          Icons.search,
          size: 30,
          color: Colors.black,
        ),
      )
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: const Icon(
            Icons.menu,
            size: 30,
            color: Colors.black,
        ),
      )
    ),
  ],
   backgroundColor: Color(0xFFA32EEB),
  // shape: const RoundedRectangleBorder(
  //   borderRadius: BorderRadius.only(
  //     bottomLeft: Radius.circular(15),
  //     bottomRight: Radius.circular(15),
  //     )
  // ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Learn & practice", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: "Contest", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: "Coach", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: "Store", icon: Icon(Icons.store)),
          BottomNavigationBarItem(label: "News", icon: Icon(Icons.newspaper))
        ]),
    );
  }
}
