import 'package:flutter/material.dart';

class YourOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Your Orders'),
          // centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 18,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Your orders will appear here!',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ],
        ),
      );
}
