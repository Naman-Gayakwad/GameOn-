import 'package:flutter/material.dart';
import 'utils.dart';
import 'outdoorlist.dart';
import 'indoorlist.dart';

class Type extends StatefulWidget {
  const Type({super.key});

  @override
  State<Type> createState() => _TypeState();
}

class _TypeState extends State<Type> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/typeback.png',
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 63.5 * fem,
                top: 314 * fem,
                child: Align(
                  child: SizedBox(
                    width: 304 * fem,
                    height: 78 * fem,
                    child: Text(
                      'Select Your Type of Sport \n ',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 32 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        fontStyle: FontStyle.italic,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 48 * fem,
                top: 466 * fem,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IndoorList()));

                    print("IndoorList");
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 16.5 * fem, 32 * fem, 16.5 * fem),
                    width: 334 * fem,
                    height: 72 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffe0eafc),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 133 * fem, 0 * fem),
                          child: Text(
                            'In-Door',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              fontStyle: FontStyle.italic,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          width: 33 * fem,
                          height: 32 * fem,
                          child: Image.asset(
                            'assets/images/material-symbols-arrow-circle-down-outline-Z8k.png',
                            width: 33 * fem,
                            height: 32 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 48 * fem,
                top: 563 * fem,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OutdoorList()));
                      print("OutdoorList");
                    });
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 16.5 * fem, 32 * fem, 16.5 * fem),
                    width: 334 * fem,
                    height: 72 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffe0eafc),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 105 * fem, 0 * fem),
                          child: Text(
                            'Out-Door',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              fontStyle: FontStyle.italic,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          width: 33 * fem,
                          height: 32 * fem,
                          child: Image.asset(
                            'assets/images/material-symbols-arrow-circle-down-outline.png',
                            width: 33 * fem,
                            height: 32 * fem,
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
      ),
    );
  }
}
