import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 10,
              decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //   image: NetworkImage(
                  //     'https://example.com/profile_background.jpg',
                  //   ),
                  //   fit: BoxFit.cover,
                  // ),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/images/logo.png')),
                  ),
                  const SizedBox(width: 16.0),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vinayak Mishra',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Badminton, Basketball ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: Colors.purple.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 65.0),
                  ),
                  child: const Text(
                    'Share',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.06),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    backgroundColor: Colors.purple.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 75.0),
                  ),
                  child: const Text(
                    'Edit',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Vinayak@Gameon.com'),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
              ),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('91 489626994'),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
              ),
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Vit Bhopal'),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // Implement edit functionality
                },
              ),
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'About',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'I am a dedicated and disciplined athlete, constantly pushing my limits to achieve peak performance. With a strong passion for sports, I thrive on the thrill of competition and the pursuit of excellence. I am relentless in my training, always striving to improve my skills, strength, and endurance. Determined and focused, I embrace challenges and embrace the journey of becoming the best version of myself both on and off the field.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: ProfilePage(),
    );
  }
}
