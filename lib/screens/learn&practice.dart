import 'package:flutter/material.dart';
import '../utils.dart';
// import 'coach.dart';
// import 'contest.dart';
// import 'home.dart';
// import 'news.dart';
// import 'store.dart';

class LearnPractice extends StatefulWidget {
  const LearnPractice({super.key});

  @override
  State<LearnPractice> createState() => _LearnPracticeState();
}

class _LearnPracticeState extends State<LearnPractice> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 179 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // color: const Color(0xFFA32EEB).withOpacity(0.1),
                child: Image.asset(
                  'assets/images/practicetop.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.001,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '  Drill',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.purple,
                  ),
                ),
              ),
              Divider(
                color: Colors.purple,
                thickness: 3,
                indent: 4,
                endIndent: 300,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.002,
              ),
              Text(
                'Tackle easy to challenging sports related problems and gaining practical experience, and enhance your chances of getting selected by the prestigeous sports organization.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.purple.withOpacity(0.9)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.009,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: const Color(0xFFA32EEB).withOpacity(0.1),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          height: MediaQuery.of(context).size.height * 0.11,
                          child: Image.asset(
                            'assets/images/under16final.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.008,
                        ),
                        Text(
                          'Under 16',
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: const Color(0xFFA32EEB).withOpacity(0.1),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          height: MediaQuery.of(context).size.height * 0.11,
                          child: Image.asset(
                            'assets/images/under16.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.008,
                        ),
                        Text(
                          'Under 19',
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.008,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: const Color(0xFFA32EEB).withOpacity(0.1),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          height: MediaQuery.of(context).size.height * 0.11,
                          child: Image.asset(
                            'assets/images/under16final.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.008,
                        ),
                        Text(
                          'Under 16',
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: const Color(0xFFA32EEB).withOpacity(0.1),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          height: MediaQuery.of(context).size.height * 0.11,
                          child: Image.asset(
                            'assets/images/under16.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.008,
                        ),
                        Text(
                          'Under 19',
                          style: TextStyle(fontSize: 18, color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Container(

              //   margin:
              //       EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 67 * fem),
              //   width: 491 * fem,
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.end,
              //     children: [
              //       Container(
              //         width: 110 * fem,
              //         height: 110 * fem,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(55 * fem),
              //           gradient: const LinearGradient(
              //             begin: Alignment(-0.227, -0.5),
              //             end: Alignment(0.386, 1),
              //             colors: <Color>[Color(0xffff8f8f), Color(0x4fff8f8f)],
              //             stops: <double>[0, 0.819],
              //           ),
              //         ),
              //         child: Stack(
              //           children: [
              //             Positioned(
              //               left: 18 * fem,
              //               top: 69 * fem,
              //               child: Align(
              //                 child: SizedBox(
              //                   width: 75 * fem,
              //                   height: 17 * fem,
              //                   child: Text(
              //                     'Live lesson',
              //                     textAlign: TextAlign.center,
              //                     style: SafeGoogleFont(
              //                       'Inter',
              //                       fontSize: 14 * ffem,
              //                       fontWeight: FontWeight.w500,
              //                       height: 1.2125 * ffem / fem,
              //                       color: Color(0xff000000),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //             Positioned(
              //               left: 37 * fem,
              //               top: 11 * fem,
              //               child: Align(
              //                 child: SizedBox(
              //                   width: 36 * fem,
              //                   height: 62 * fem,
              //                   child: Image.asset(
              //                     'assets/images/d-casual-life-girl-giving-an-online-lesson-1.png',
              //                     fit: BoxFit.cover,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 17 * fem,
              //       ),
              //       Container(
              //         padding: EdgeInsets.fromLTRB(
              //             18 * fem, 21 * fem, 18 * fem, 24 * fem),
              //         width: 110 * fem,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(55 * fem),
              //           gradient: const LinearGradient(
              //             begin: Alignment(0, -1),
              //             end: Alignment(0, 1),
              //             colors: <Color>[Color(0xff4373ef), Color(0x4fe0aad7)],
              //             stops: <double>[0.052, 0.854],
              //           ),
              //         ),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           children: [
              //             Container(
              //               margin: EdgeInsets.fromLTRB(
              //                   0 * fem, 0 * fem, 0 * fem, 6 * fem),
              //               width: 74 * fem,
              //               height: 42 * fem,
              //               child: Image.asset(
              //                 'assets/images/abstract-chess-1.png',
              //                 fit: BoxFit.cover,
              //               ),
              //             ),
              //             Container(
              //               margin: EdgeInsets.fromLTRB(
              //                   1 * fem, 0 * fem, 0 * fem, 0 * fem),
              //               child: Text(
              //                 'Live match',
              //                 textAlign: TextAlign.center,
              //                 style: SafeGoogleFont(
              //                   'Inter',
              //                   fontSize: 14 * ffem,
              //                   fontWeight: FontWeight.w500,
              //                   height: 1.2125 * ffem / fem,
              //                   color: Color(0xff000000),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              // SizedBox(
              //   width: 17 * fem,
              // ),
              // Container(
              //   padding: EdgeInsets.fromLTRB(
              //       11.5 * fem, 6 * fem, 10.5 * fem, 9 * fem),
              //   width: 110 * fem,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(55 * fem),
              //     gradient: const LinearGradient(
              //       begin: Alignment(0, -1),
              //       end: Alignment(0, 1),
              //       colors: <Color>[Color(0xffeb43ef), Color(0x6fe29797)],
              //       stops: <double>[0.052, 0.708],
              //     ),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Container(
              //         margin: EdgeInsets.fromLTRB(
              //             0 * fem, 0 * fem, 1 * fem, 4 * fem),
              //         width: 50 * fem,
              //         height: 57 * fem,
              //         child: Image.asset(
              //           'assets/images/juicy-ai-coding-slash-programming-1.png',
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //       Container(
              //         constraints: BoxConstraints(
              //           maxWidth: 88 * fem,
              //         ),
              //         child: Text(
              //           'Practice with computer',
              //           textAlign: TextAlign.center,
              //           style: SafeGoogleFont(
              //             'Inter',
              //             fontSize: 14 * ffem,
              //             fontWeight: FontWeight.w500,
              //             height: 1.2125 * ffem / fem,
              //             color: Color(0xff000000),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              //       SizedBox(
              //         width: 17 * fem,
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.008,
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(12 * fem, 0 * fem, 27 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(14 * fem, 11 * fem, 22 * fem, 14 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffc98cff),
                  borderRadius: BorderRadius.circular(13 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 21 * fem, 40 * fem),
                      width: 191 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 20 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 18 * fem, 0 * fem),
                                  width: 52 * fem,
                                  height: 52 * fem,
                                  child: Image.asset(
                                    'assets/images/image-21.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 3 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    'Live lesson',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 22 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 129 * fem,
                            ),
                            child: Text(
                              'live class of chess',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 37 * fem, 0 * fem, 0 * fem),
                      width: 129 * fem,
                      height: 129 * fem,
                      child: Image.asset(
                        'assets/images/image-22.png',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
