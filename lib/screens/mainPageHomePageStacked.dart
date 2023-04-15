import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'home.dart';

class Combined extends StatefulWidget {
  const Combined({super.key});

  @override
  State<Combined> createState() => _CombinedState();
}

class _CombinedState extends State<Combined> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MainPage(),
        const Home(),
      ],
    );
  }
}
