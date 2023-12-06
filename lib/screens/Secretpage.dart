import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String _message = 'Welcome to My Page!';
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _message,
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 20.0),
          Text(
            'Counter: $_counter',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Increment Counter'),
          ),
        ],
      ),
    );
  }
}
