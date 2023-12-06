import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class bookcourse extends StatelessWidget {
  const bookcourse({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.withOpacity(0.8),
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         Navigator.pop(context);
        //       },
        //       icon: Icon(Icons.arrow_back_ios_new_outlined))
        // ],
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // tZC (1:12)
          width: double.infinity,
          height: 932 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // ellipse2tLE (1:13)
                left: 0 * fem,
                top: 95 * fem,
                child: Align(
                  child: SizedBox(
                    width: 666.55 * fem,
                    height: 1009.08 * fem,
                    child: Image.asset(
                      'assets/images/ellipse-2.png',
                      width: 666.55 * fem,
                      height: 1009.08 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle25xqt (1:14)
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 430 * fem,
                    height: 211 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0.047, 0.929),
                          colors: <Color>[Color(0xff6687ff), Color(0x000b3ae0)],
                          stops: <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // chesscoach1JN (1:15)
                left: 184 * fem,
                top: 137 * fem,
                child: Align(
                  child: SizedBox(
                    width: 85 * fem,
                    height: 17 * fem,
                    child: Text(
                      'chess coach\n',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // group51FyQ (1:52)
                left: 22 * fem,
                top: 338 * fem,
                child: Container(
                  width: 457.05 * fem,
                  height: 90 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle31uo4 (1:53)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 387.85 * fem,
                            height: 90 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * fem),
                                color: Color(0xff725bff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // image26cBg (1:54)
                        left: 10.9956665039 * fem,
                        top: 5 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 94.96 * fem,
                            height: 80 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20 * fem),
                              child: Image.asset(
                                'assets/images/image-26.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // managelivesessionVFU (1:55)
                        left: 124 * fem,
                        top: 30 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 242 * fem,
                            height: 30 * fem,
                            child: Text(
                              'Manage Live Session',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group53kBQ (1:56)
                left: 22 * fem,
                top: 580 * fem,
                child: Container(
                  width: 457.05 * fem,
                  height: 90 * fem,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle31ntn (I1:56;1:58)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 387.85 * fem,
                            height: 90 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * fem),
                                color: Color(0xff725bff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // image26hkr (I1:56;1:59)
                        left: 10.9956665039 * fem,
                        top: 5 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 94.96 * fem,
                            height: 80 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20 * fem),
                              child: Image.asset(
                                'assets/images/image-26-U9k.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // managerecsessionzjx (I1:56;1:60)
                        left: 123 * fem,
                        top: 30 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 161 * fem,
                            height: 30 * fem,
                            child: Text(
                              '1 on 1 Session',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group526HC (1:57)
                left: 22 * fem,
                top: 459 * fem,
                child: Container(
                  width: 457.05 * fem,
                  height: 90 * fem,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle31kMk (1:58)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 387.85 * fem,
                            height: 90 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * fem),
                                color: Color(0xff725bff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // image264dL (1:59)
                        left: 10.9956665039 * fem,
                        top: 5 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 94.96 * fem,
                            height: 80 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20 * fem),
                              child: Image.asset(
                                'assets/images/image-26-xar.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // managerecsessionmne (1:60)
                        left: 123 * fem,
                        top: 30 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 238 * fem,
                            height: 30 * fem,
                            child: Text(
                              'Manage Rec Session',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // viswanathananandGDc (1:61)
                left: 181 * fem,
                top: 113 * fem,
                child: Align(
                  child: SizedBox(
                    width: 214 * fem,
                    height: 27 * fem,
                    child: Text(
                      'Viswanathan Anand',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 22 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // indianchessgrandmasteraformerf (1:62)
                left: 170 * fem,
                top: 171 * fem,
                child: Align(
                  child: SizedBox(
                    width: 213 * fem,
                    height: 59 * fem,
                    child: Text(
                      'Indian chess grand master. \nA former five-time World Chess Champion.',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // image24Qz2 (1:63)
                left: 22 * fem,
                top: 95 * fem,
                child: Align(
                  child: SizedBox(
                    width: 145 * fem,
                    height: 158 * fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13 * fem),
                      child: Image.asset(
                        'assets/images/image-24.png',
                        fit: BoxFit.cover,
                      ),
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
