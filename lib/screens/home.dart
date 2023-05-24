// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:game_on/screens/video_player.dart';
import '../widgets/banner_widget.dart';
// import 'learn&practice.dart';
// import 'mainPageHomePageStacked.dart';
import 'mainpage.dart';
import '../utils/next_screen.dart';
import '../utils.dart';
// import 'coach.dart';
// import 'contest.dart';
// import 'news.dart';
// import 'store.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showText = false;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 425;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            BannerWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10 * fem, 0 * fem, 0 * fem, 11 * fem),
              width: double.infinity,
              height: 150 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 281 * fem,
                    top: 0 * fem,
                    child: GestureDetector(
                      onTap: () {
                        nextScreen(
                            context,
                            MainPage(
                              tapIndex: 2,
                            ));
                      },
                      // style: TextButton.styleFrom(
                      //   padding: EdgeInsets.zero,
                      // ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 18 * fem, 7 * fem, 17 * fem),
                        width: 115 * fem,
                        height: 143 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20 * fem),
                          gradient: const LinearGradient(
                            begin: Alignment(-1, -0.853),
                            end: Alignment(0.009, 0.594),
                            colors: <Color>[
                              Color(0x6efb6f6f),
                              Color(0xfffb6f6f)
                            ],
                            stops: <double>[0.354, 1],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x3f000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 98 * fem,
                              height: 88 * fem,
                              child: Image.asset(
                                'assets/images/contest.png',
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 2 * fem, 0 * fem),
                              child: Text(
                                'Contest',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 9 * fem,
                    top: 0 * fem,
                    child: TextButton(
                      onPressed: () {
                        // nextScreen(context, page)
                        print("hello");
                        nextScreen(
                          context,
                          MainPage(
                            tapIndex: 6,
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 115 * fem,
                        height: 143 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20 * fem),
                          gradient: const LinearGradient(
                            begin: Alignment(0, -1),
                            end: Alignment(0, 1),
                            colors: <Color>[
                              Color(0xff9bffab),
                              Color(0x849bffab)
                            ],
                            stops: <double>[0, 0.479],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 17 * fem),
                              width: 134 * fem,
                              height: 100 * fem,
                              child: Image.asset(
                                'assets/images/history.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              child: Text(
                                'History',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 145 * fem,
                    top: 0 * fem,
                    child: GestureDetector(
                      onTap: () {
                        nextScreen(
                            context,
                            MainPage(
                              tapIndex: 1,
                            ));
                      },
                      child: Container(
                        width: 115 * fem,
                        height: 143 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20 * fem),
                          gradient: const LinearGradient(
                            begin: Alignment(-0.009, -0.853),
                            end: Alignment(-0.009, 0.469),
                            colors: <Color>[
                              Color(0x79ffe39b),
                              Color(0xffffe39b)
                            ],
                            stops: <double>[0.453, 1],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 17 * fem),
                              width: 106 * fem,
                              height: 85 * fem,
                              child: Image.asset(
                                'assets/images/practice.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              child: Text(
                                'Learn &\nPractice',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 11 * fem),
              height: 143 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      nextScreen(
                          context,
                          MainPage(
                            tapIndex: 3,
                          ));
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          4 * fem, 6 * fem, 5 * fem, 15 * fem),
                      width: 115 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * fem),
                        gradient: const LinearGradient(
                          begin: Alignment(0.252, -0.483),
                          end: Alignment(-0.791, 0.916),
                          colors: <Color>[Color(0xffb75bff), Color(0x6ab75bff)],
                          stops: <double>[0, 0.62],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 17 * fem),
                            width: 106 * fem,
                            height: 85 * fem,
                            child: Image.asset(
                              'assets/images/coach.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Coach',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 21 * fem,
                  ),
                  TextButton(
                    onPressed: () {
                      nextScreen(
                          context,
                          MainPage(
                            tapIndex: 4,
                          ));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 115 * fem,
                      height: double.infinity,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            9 * fem, 6 * fem, 10 * fem, 14 * fem),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20 * fem),
                          gradient: const LinearGradient(
                            begin: Alignment(1.696, -1.434),
                            end: Alignment(0.261, 0.49),
                            colors: <Color>[
                              Color(0x4dfeafaf),
                              Color(0xffafcafe)
                            ],
                            stops: <double>[0.599, 1],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 7 * fem),
                              width: 96 * fem,
                              height: 96 * fem,
                              child: Image.asset(
                                'assets/images/store.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  2.73 * fem, 0 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'Store',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 21 * fem,
                  ),
                  GestureDetector(
                    onTap: () {
                      nextScreen(
                          context,
                          MainPage(
                            tapIndex: 5,
                          ));
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          3 * fem, 6 * fem, 0 * fem, 14 * fem),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * fem),
                        gradient: const LinearGradient(
                          begin: Alignment(0.774, 1),
                          end: Alignment(-0.313, -0.552),
                          colors: <Color>[Color(0x6ef96ffb), Color(0x6ef900ff)],
                          stops: <double>[0.354, 0.958],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 18 * fem),
                            width: 112 * fem,
                            height: 85 * fem,
                            child: Image.asset(
                              'assets/images/news.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0.73 * fem, 0 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'News',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Container(
              padding: EdgeInsets.only(left: 18.0, right: 18.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore Opportunities',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFA32EEB)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    Text(
                      'Play, showcase skills and build your strong community through online or offline opportunities of your interest and make your mark!',
                      style: TextStyle(
                          color: const Color(0xFFA32EEB).withOpacity(0.8)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    Row(
                      children: [
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
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                child: Image.asset(
                                  'assets/images/under16final.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.008,
                              ),
                              Text(
                                'Under 16',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.purple),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                child: Image.asset(
                                  'assets/images/under16.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.008,
                              ),
                              Text(
                                'Under 19',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      children: [
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
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                child: Image.asset(
                                  'assets/images/under21.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.008,
                              ),
                              Text(
                                'Above 21',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.purple),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                child: Image.asset(
                                  'assets/images/specialwomenfinal.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.008,
                              ),
                              Text(
                                'For Women',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '    Start your day with yoga!',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFA32EEB)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.008,
            ),
            Text(
              'Find your balance, body and soul through art of yoga!       ',
              style: TextStyle(color: const Color(0xFFA32EEB).withOpacity(0.8)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: YoutubePlayerWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
