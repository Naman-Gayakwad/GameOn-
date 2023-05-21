import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_on/widgets/image_picker.dart';
import 'login_screen.dart';
import '../utils/next_screen.dart';
import '../widgets/doublecircle_bgi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

final _firebase = FirebaseAuth.instance;
bool result = false;

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _enteredName = '';
  var _enteredEmail = '';
  var _enteredPassword = '';
  var _enteredMobileNo = '';
  File? _selectedImage;
  void _submit() async {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      if (isLogin) {
        try {
          result = true;

          final UserCredential = _firebase.signInWithEmailAndPassword(
              email: _enteredEmail, password: _enteredPassword);
        } on FirebaseAuthException catch (error) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(error.message ?? 'Authentication failed'),
            ),
          );
        }
      } else {
        try {
          final userCredentials =
              await _firebase.createUserWithEmailAndPassword(
                  email: _enteredEmail, password: _enteredPassword);
          final storageRef = FirebaseStorage.instance
              .ref()
              .child('user_images')
              .child('${userCredentials.user!.uid}.jpg');

          await storageRef.putFile(_selectedImage!);
          final imageUrl = await storageRef.getDownloadURL();
          print(imageUrl);
          // ignore: use_build_context_synchronously
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Account Created Successfully'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          nextScreenReplace(context, const LoginScreen());
                        },
                        child: const Text('Login Now'))
                  ],
                );
              });
        } on FirebaseAuthException catch (error) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.message ?? 'Authentication failed')),
          );
        }
      }
      if (_selectedImage == null) {
        return;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          const DoubleCircle(),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Create Account',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                UserImagePicker(
                  onPickImage: (pickedImage) {
                    _selectedImage = pickedImage;
                  },
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 10, top: 5.0, bottom: 5.0),
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.40,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30)),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Enter your full name*'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Your name is required';
                            }
                            return null;
                          },
                          onSaved: (newValue) {
                            _enteredName = newValue!;
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Enter your Email ID*'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email ID is required';
                            }
                            return null;
                          },
                          onSaved: (newValue) {
                            _enteredEmail = newValue!;
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Enter your password*',
                          ),
                          validator: (value) {
                            if (value!.isEmpty || value.length < 6) {
                              return 'password must be atleast 6 digits';
                            }
                            return null;
                          },
                          onSaved: (newValue) {
                            _enteredPassword = newValue!;
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Enter your Mobile Number'),
                          onSaved: (newValue) {
                            _enteredMobileNo = newValue!;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(151, 51, 238, 1.0))),
                  onPressed: _submit,
                  //   if (result) {
                  //     showDialog(
                  //       context: context,
                  //       builder: (BuildContext context) {
                  //         return AlertDialog(
                  //           title: Text('Account Created Successfully!'),
                  //           actions: [
                  //             TextButton(
                  //                 onPressed: () {
                  //                   nextScreenReplace(context, LoginScreen());
                  //                 },
                  //                 child: Text('Login Now'))
                  //           ],
                  //         );
                  //       });

                  // },

                  child: const Text(
                    'Create Account',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const Divider(
                  color: Color.fromRGBO(151, 51, 238, 1.0),
                  thickness: 2.0,
                  indent: 40,
                  endIndent: 40,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {
                          nextScreenReplace(context, const LoginScreen());
                        },
                        child: const Text(
                          'Sign-in',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(151, 51, 238, 1)),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
