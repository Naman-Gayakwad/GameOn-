import 'package:flutter/material.dart';
import 'login_screen.dart';
import '../widgets/doublecircle_bgi.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      String email = _emailController.text;
      _resetPassword(email);
    }
  }

  Future<void> _resetPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Email Sent'),
              content: Text('Please check your email to reset your password.'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'))
              ],
            );
          });
    } catch (e) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text(
                  'Failed to send password reset email. Please try again.'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'))
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          const DoubleCircle(),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 200, 30, 0),
            child: Container(
              height: 337,
              width: 376,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          shadows: []),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Reset password',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.87,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Form(
                            key: _formKey,
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                  labelText: 'Enter registered email'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please enter your registered email';
                                }
                                return null;
                              },
                            ),
                          )
                          // TextField(
                          //   controller: _emailController,
                          //   onChanged: (value) {
                          //     setState(() {});
                          //   },
                          //   decoration: const InputDecoration(
                          //     icon: Icon(Icons.email),
                          //     border: InputBorder.none,
                          //     hintText: 'Enter your email',
                          //   ),
                          //   keyboardType: TextInputType.emailAddress,
                          // ),
                          ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  ElevatedButton(
                    onPressed: _submitForm,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      alignment: Alignment.center,
                      backgroundColor: Colors.purple.shade600,
                      minimumSize: const Size(344, 58),
                    ),
                    child: const Text(
                      'Get OTP',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 225),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context, const LoginScreen());
                      },
                      child: const Text(
                        'Go Back',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
