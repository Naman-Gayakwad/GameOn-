import 'package:flutter/material.dart';

class Coach extends StatefulWidget {
  const Coach({super.key});

  @override
  State<Coach> createState() => _CoachState();
}

class _CoachState extends State<Coach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 51, 101),
    );
  }
}