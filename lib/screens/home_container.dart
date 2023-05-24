import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  Color button1Color = Colors.blue;
  Color button2Color = Colors.red;

  bool showFeed1 = false;
  bool showFeed2 = false;

  void toggleButton1Color() {
    setState(() {
      button1Color = (button1Color == Colors.blue) ? Colors.green : Colors.blue;
    });
  }

  void toggleButton2Color() {
    setState(() {
      button2Color = (button2Color == Colors.red) ? Colors.orange : Colors.red;
    });
  }

  void toggleFeed1Visibility() {
    setState(() {
      showFeed1 = !showFeed1;
    });
  }

  void toggleFeed2Visibility() {
    setState(() {
      showFeed2 = !showFeed2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container with Buttons'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  toggleButton1Color();
                  toggleFeed1Visibility();
                },
                child: Text(
                  'Button 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 20),
              TextButton(
                onPressed: () {
                  toggleButton2Color();
                  toggleFeed2Visibility();
                },
                child: Text(
                  'Button 2',
                  style: TextStyle(color: Colors.white),
                ),
                // color: button2Color,
              ),
            ],
          ),
          SizedBox(height: 20),
          Visibility(
            visible: showFeed1,
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.yellow,
              child: Text('Feed 1'),
            ),
          ),
          Visibility(
            visible: showFeed2,
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.green,
              child: Text('Feed 2'),
            ),
          ),
        ],
      ),
    );
  }
}
