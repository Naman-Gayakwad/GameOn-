import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/button_widget.dart';
import '../widgets/navigation_drawer_widget.dart';

import 'coach.dart';
import 'contest.dart';
import 'home.dart';
import 'learn&practice.dart';
import 'news.dart';
import 'history.dart';
import 'store.dart';

class MainPage extends StatefulWidget {
  static final String title = 'Navigation Drawer';
  int? tapIndex;
  MainPage({super.key, this.tapIndex});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = const [
    Home(),
    LearnPractice(),
    Contest(),
    Coach(),
    Store(),
    News(),
    History(),
  ];
  int currentIndex = 0;
  void _onTap(int index) {
    setState(() {
      currentIndex = index;
      widget.tapIndex = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text("GameON"),
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
        // leading: GestureDetector(
        //   onTap: () {},
        //   child: const Icon(
        //     Icons.menu,
        //     size: 30,
        //     color: Colors.black,
        //   ),
        // ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
              )),
        ],
        backgroundColor: const Color(0xFFA32EEB),
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(15),
        //     bottomRight: Radius.circular(15),
        //     )
        // ),
      ),
      body: widget.tapIndex == null
          ? pages[currentIndex]
          : pages[widget.tapIndex!],
      bottomNavigationBar: widget.tapIndex == 6
          ? null
          : BottomNavigationBar(
              onTap: _onTap,
              currentIndex:
                  widget.tapIndex == null ? currentIndex : widget.tapIndex!,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              items: const [
                  BottomNavigationBarItem(
                      label: "Home", icon: Icon(Icons.home)),
                  BottomNavigationBarItem(
                      label: "Learn & practice", icon: Icon(Icons.psychology)),
                  BottomNavigationBarItem(
                      label: "Contest", icon: Icon(Icons.leaderboard_outlined)),
                  BottomNavigationBarItem(
                      label: "Coach", icon: Icon(Icons.co_present_rounded)),
                  BottomNavigationBarItem(
                      label: "Store", icon: Icon(Icons.store)),
                  BottomNavigationBarItem(
                      label: "News", icon: Icon(Icons.newspaper))
                ]),
    );
  }
}
