// import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:game_on/widgets/doublecircle_bgi.dart';
import 'package:game_on/widgets/dropdown_container.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA32EEB),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          // color: const Color(0xFFA32EEB),
        ),
        title: const Text('Contact Us'),
      ),
      body: Stack(
        children: [
          // Positioned.fill(
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: -550, sigmaY: 500),
          //     child: Container(color: Color.fromARGB(0, 33, 4, 4)),
          //   ),
          // ),
          // const DoubleCircle(),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 209, 189, 222),
                  Color.fromARGB(255, 204, 151, 238),
                  Color.fromARGB(255, 198, 147, 229),
                  // Color.fromARGB(255, 179, 71, 246),
                  // Color(0xFFA32EEB)
                ],
                // colors: [
                //   Color(0xFFA32EEB),
                //   Color(0xFF6A1B9A),
                //   Color(0xFF45277F),
                //   Color(0xFF231D71),
                //   Color(0xFF0D0B60)
                // ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: const Text(
                      'How can we help you?',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Thank you for showing your interest in collaborating and interacting with us. Our hardworking and dedicated team is ready to help you in every possible way.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.004),
                  Image.asset('assets/images/contactusillustration.png'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),

                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color(0xFFA32EEB))),
                      onPressed: () {
                        // Add your get in touch action here
                      },
                      child: const Text(
                        'Get in touch',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      'Thank you for reaching out to the GameOn',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),

                  const Text(
                      'Our hardworking and dedicated team is eager to help you in every possible way.',
                      textAlign: TextAlign.center),
                  const Text(
                    'FAQs',
                    style: TextStyle(fontSize: 24),
                  ),
                  // Add your FAQs here
                  const SizedBox(height: 16),
                  DropDown(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),

                  const Text(
                    'Our Contact Details',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),

                  const SizedBox(height: 8),
                  // const Text(
                  //   'Phone Number:',
                  //   style: TextStyle(fontSize: 18),
                  // ),
                  // SizedBox(height: MediaQuery.of(context).size.height * 0.008),

                  GestureDetector(
                    onTap: sendEmail,
                    child: const Text(
                      'gameon@help.com',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                  GestureDetector(
                    onTap: callNumber,
                    child: const Text(
                      '+91 212121212121',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'gameon@help.com',
      queryParameters: {'subject': 'Hello', 'body': 'Body of the email'},
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch email';
    }
  }

  void callNumber() async {
    final Uri _phoneLaunchUri = Uri(
      scheme: 'tel',
      path: '+91 2121212121',
    );

    if (await canLaunchUrl(_phoneLaunchUri)) {
      await launchUrl(_phoneLaunchUri);
    } else {
      throw 'Could not launch phone';
    }
  }
}
