import 'package:flutter/material.dart';

class DoubleCircle extends StatefulWidget {
  const DoubleCircle({super.key});

  @override
  State<DoubleCircle> createState() => _DoubleCircleState();
}

class _DoubleCircleState extends State<DoubleCircle> {
  final circleColor = LinearGradient(
    colors: [
      Colors.purple,
      Colors.purple.shade600,
      Colors.purpleAccent,
      Colors.purple.shade200,
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 80,
          right: 8,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.58,
            width: MediaQuery.of(context).size.width * 1.21,

            // color: Colors.amber,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purpleAccent,
              gradient: circleColor,
            ),
          ),
        ),
        Positioned(
          top: 500,
          left: 60,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 1.21,

            // color: Colors.amber,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purpleAccent,
              gradient: circleColor,
            ),
          ),
        ),
      ],
    );
  }
}
