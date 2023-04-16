import 'package:flutter/material.dart';
import 'package:game_on/utils.dart';
class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // oAx (1:183)
        padding: EdgeInsets.fromLTRB(26*fem, 95*fem, 25*fem, 102*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup7bykXMr (6BqMAANVDvQFndqBmD7bYk)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 47*fem),
              width: double.infinity,
              height: 213*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupmw6pSUp (6BqMG5NJNW5iuwwrJqmw6p)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 31*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(26*fem, 172*fem, 28*fem, 16*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                      gradient: LinearGradient (
                        begin: Alignment(1.696, -1.434),
                        end: Alignment(0.261, 0.49),
                        colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
                        stops: <double>[0.448, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Text(
                      'Chess board',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // rectangle12R5r (1:224)
                    width: 174*fem,
                    height: 213*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                      gradient: LinearGradient (
                        begin: Alignment(1.696, -1.434),
                        end: Alignment(0.261, 0.49),
                        colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
                        stops: <double>[0.448, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupcg4qH84 (6BqMMf3LPFJTfcHDAJCg4Q)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rectangle13QTa (1:221)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 31*fem, 0*fem),
                    width: 174*fem,
                    height: 216*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                      gradient: LinearGradient (
                        begin: Alignment(1.696, -1.434),
                        end: Alignment(0.261, 0.49),
                        colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
                        stops: <double>[0.448, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // rectangle14esi (1:225)
                    width: 174*fem,
                    height: 216*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                      gradient: LinearGradient (
                        begin: Alignment(1.696, -1.434),
                        end: Alignment(0.261, 0.49),
                        colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
                        stops: <double>[0.448, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupopwjKyr (6BqMS55eRZue7VP168opwJ)
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rectangle155TE (1:223)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 31*fem, 0*fem),
                    width: 174*fem,
                    height: 214*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                      gradient: LinearGradient (
                        begin: Alignment(1.696, -1.434),
                        end: Alignment(0.261, 0.49),
                        colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
                        stops: <double>[0.448, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // rectangle16jng (1:222)
                    width: 174*fem,
                    height: 214*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                      gradient: LinearGradient (
                        begin: Alignment(1.696, -1.434),
                        end: Alignment(0.261, 0.49),
                        colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
                        stops: <double>[0.448, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
