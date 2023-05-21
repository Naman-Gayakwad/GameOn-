import 'package:flutter/material.dart';
import 'coach.dart';

class BeAMentorScreen extends StatefulWidget {
  const BeAMentorScreen({super.key});

  @override
  State<BeAMentorScreen> createState() => _BeAMentorScreenState();
}

class _BeAMentorScreenState extends State<BeAMentorScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.05,
              // ),
              const Text(
                '  Become a Mentor & \n  Guide GameOn \n  Talent ',
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w400,
                    shadows: [
                      Shadow(
                          blurRadius: 5.0,
                          offset: Offset(0.0, 3.0),
                          color: Colors.grey)
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    '  Fill in the details\n  to continue application',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Image.asset('assets/images/boyplayer.png'),
                ],
              ),
              const Divider(
                height: 20,
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'First Name'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'First Name is required';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Last Name'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Last Name is required';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'D.O.B'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'D.O.B is required';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'Email'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email is required';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Specialization'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Specialization is required';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Certificates/achievements'),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                  'Details submitted successfully.\nWe will get back to you soon...After verifying your credentials !!'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('close'))
                              ],
                            );
                          });
                    },
                    child: const Text(
                      'Submit',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
