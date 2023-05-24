import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
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
                'Welcome to GameOn, your ultimate companion in the world of sports. We are here to keep you connected, informed, and engaged with your faviourite teams and atheletes.\n At GameOn , we are passionate about sports and the power they have to unite people. Our App is designed to bring you closer to the action, providing realtime updates, analysis and an immersive experience.',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ],
        ),
      );
}
