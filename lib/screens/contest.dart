import 'package:flutter/material.dart';
import '../utils.dart';

class Contest extends StatefulWidget {
  const Contest({super.key});

  @override
  State<Contest> createState() => _ContestState();
}

class _ContestState extends State<Contest> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Container(
          // tRC (1:227)
          padding: EdgeInsets.fromLTRB(17*fem, 91*fem, 18*fem, 171*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                constraints: BoxConstraints (
                  maxWidth: 353*fem,
                ),
                child: Text(
                  'Competition, Fests, & more!',
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 36*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    color: Color(0xff0f1497),
                  ),
                ),
              ),
              Container(
                
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 147*fem, 13*fem),
                width: 202*fem,
                height: 2*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffbf5f),
                ),
              ),
              Container(
                
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 42*fem),
                constraints: BoxConstraints (
                  maxWidth: 319*fem,
                ),
                child: Text(
                  'Participate in various opportunities to showcase your skills & get rewarded!',
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125*ffem/fem,
                    color: Color(0xff004596),
                  ),
                ),
              ),
              Container(
                
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 40*fem),
                width: double.infinity,
                height: 52*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                      width: 192*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xff0e6dfb),
                        borderRadius: BorderRadius.circular(9*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Explore Now',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      
                      width: 192*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff000000)),
                        borderRadius: BorderRadius.circular(9*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Host opportunity',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 122*fem, 19*fem),
                child: Text(
                  'National level competition ',
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 20*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125*ffem/fem,
                    color: Color(0xff9300d9),
                  ),
                ),
              ),
              Container(
                
                margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 11*fem, 1*fem),
                width: double.infinity,
                height: 184*fem,
                child: Stack(
                  children: [
                    Positioned(
                      
                      left: 0*fem,
                      top: 141*fem,
                      child: Align(
                        child: SizedBox(
                          width: 218*fem,
                          height: 25*fem,
                          child: Text(
                            'Competition Near you  ',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff8700c7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 373*fem,
                          height: 108*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(11*fem),
                              color: Color(0xffafcafe),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      
                      left: 152*fem,
                      top: 89*fem,
                      child: Align(
                        child: SizedBox(
                          width: 58*fem,
                          height: 58*fem,
                          child: Image.asset(
                            'assets/images/image-12.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      
                      left: 224*fem,
                      top: 64*fem,
                      child: Container(
                        width: 142*fem,
                        height: 38.46*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff000000),
                          borderRadius: BorderRadius.circular(9*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Apply Now',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                
                margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 11*fem, 0*fem),
                width: double.infinity,
                height: 144*fem,
                child: Stack(
                  children: [
                    Positioned(
                      
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 373*fem,
                          height: 108*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(11*fem),
                              color: Color(0xffafcafe),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      
                      left: 152*fem,
                      top: 86*fem,
                      child: Align(
                        child: SizedBox(
                          width: 58*fem,
                          height: 58*fem,
                          child: Image.asset(
                            'assets/images/image-13.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      
                      left: 224*fem,
                      top: 64*fem,
                      child: Container(
                        width: 142*fem,
                        height: 38.46*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff000000),
                          borderRadius: BorderRadius.circular(9*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Apply Now',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
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
