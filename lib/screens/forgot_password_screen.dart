import 'package:flutter/material.dart';
import '../widgets/doublecircle_bgi.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const DoubleCircle(),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 200, 30, 0),
          child: Container(
            height: 337,
            width: 376,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
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
                    'Email or Phone',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Enter your email'),
                    ),
                  ),
                ),
                Container(
                  height: 58,
                  width: 344,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(58),
                      color: Colors.purpleAccent),
                  child: ElevatedButton(
                    onPressed: () {
                      print('get OTP Pressed');
                    },
                    style: ButtonStyle(),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Get OTP',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
