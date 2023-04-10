import 'dart:async';

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'package:provider/provider.dart';
import '../providers/sign_in_provider.dart';

class Scene extends StatefulWidget {
  const Scene({super.key});

  @override
  State<Scene> createState() => _SceneState();
}

class _SceneState extends State<Scene> {
  @override
  void initState() {
    final sp = context.read<SignInProvider>();
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      sp.isSignedIn == false
          ? Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()))
          : Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        // iphone14promax98ZN (93:104)
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: double.infinity,
          height: 932 * fem,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/page1img1.png',
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                // outlinedelhiindiacityskylinewi (96:126)
                left: -17 * fem,
                top: 569 * fem,
                child: Align(
                  child: SizedBox(
                    width: 463 * fem,
                    height: 363 * fem,
                    child: Image.asset(
                      'assets/images/page1img2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // finaliconremovebgpreview14LY (104:132)
                left: 123 * fem,
                top: 145 * fem,
                child: Align(
                  child: SizedBox(
                    width: 185 * fem,
                    height: 172 * fem,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // gameon182A8g (137:138)
                left: 45 * fem,
                top: 231 * fem,
                child: Align(
                  child: SizedBox(
                    width: 340 * fem,
                    height: 362 * fem,
                    child: Image.asset(
                      'assets/images/appname.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
