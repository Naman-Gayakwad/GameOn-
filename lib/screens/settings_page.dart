import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isSubscribed = false;

  void _toggleSubscription() {
    setState(() {
      _isSubscribed = !_isSubscribed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              ' Newsletter Preference',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              textAlign: TextAlign.center,
              'From here you can set the preference of receiving our newsletters\nOur newsletter will gain you access to the latest updates regarding the sports competition that is going to happen in the near future',
              style: TextStyle(color: Colors.purple, fontSize: 15),
            ),
            ListTile(
              title: Text(
                'Newsletter Preference',
                style: TextStyle(
                    color: Colors.purple.withOpacity(0.9),
                    fontWeight: FontWeight.w500),
              ),
              trailing: Switch(
                value: _isSubscribed,
                onChanged: (value) {
                  _toggleSubscription();
                },
              ),
              onTap: () {
                _toggleSubscription();
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              ' Notification Preferences',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              ' From here you can customize the notfications you wish to receive. This will be applied as your default preferences for the new registrations.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
                // fontWeight: FontWeight.
              ),
            ),
            ListTile(
              title: Text(
                'Notification Preference ',
                style: TextStyle(
                    color: Colors.purple.withOpacity(0.9),
                    fontWeight: FontWeight.w500),
              ),
              trailing: Switch(
                value: _isSubscribed,
                onChanged: (value) {
                  value = false;
                  _toggleSubscription();
                },
              ),
              onTap: () {
                _toggleSubscription();
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(151, 51, 238, 1.0)),
              ),
              onPressed: () {},
              child:
                  const Text('Change Password', style: TextStyle(fontSize: 20)),
            ),
          ],
        ));
  }
}
