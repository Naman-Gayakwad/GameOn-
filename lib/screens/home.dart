import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:game_on/utils.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/ipl.png'},
    {"id": 2, "image_path": 'assets/images/football.png'},
    {"id": 3, "image_path": 'assets/images/kabaddi.png'},
    {"id": 4, "image_path": 'assets/images/pbl.png'},
    {"id": 5, "image_path": 'assets/images/werstling.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Column(
        children:[ 
          SizedBox(height: 130,),   
          InkWell(
            
            onTap: () {
              print(currentIndex);
            },
            child: CarouselSlider(
              
              
              items: imageList
                  .map(
                    (item) => Image.asset(
                      item['image_path'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ).toList(),
                  
              carouselController: carouselController,
              
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  }); 
                },
              ),
            ),
            
            
          ),
          
           Positioned( 
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 17 : 7,
                    height: 5.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: currentIndex == entry.key
                            ? Colors.red
                            : Colors.teal),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
            width: double.infinity,
            height: 150*fem,
            child: Stack(
              children: [
                Positioned(
                  left: 281*fem,
                  top: 0*fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10*fem, 18*fem, 7*fem, 17*fem),
                      width: 115*fem,
                      height: 143*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                        gradient: const LinearGradient (
                          begin: Alignment(-1, -0.853),
                          end: Alignment(0.009, 0.594),
                          colors: <Color>[Color(0x6efb6f6f), Color(0xfffb6f6f)],
                          stops: <double>[0.354, 1],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3f000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(         
                            width: 98*fem,
                            height: 88*fem,
                            child: Image.asset(
                                'assets/images/contest.png',
                              ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                            child: Text(
                              'Contest',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
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
                  left: 9*fem,
                  top: 0*fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 115*fem,
                      height: 143*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                          gradient: const LinearGradient (
                            begin: Alignment(0, -1),
                            end: Alignment(0, 1),
                            colors: <Color>[Color(0xff9bffab), Color(0x849bffab)],
                            stops: <double>[0, 0.479],
                          ),
                          boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                                  width: 134*fem,
                                  height: 100*fem,
                                  child: Image.asset(
                                    'assets/images/history.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                  'History',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*ffem/fem,
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
                  left: 145*fem,
                  top: 0*fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 115*fem,
                      height: 143*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                          gradient: const LinearGradient (
                            begin: Alignment(-0.009, -0.853),
                            end: Alignment(-0.009, 0.469),
                            colors: <Color>[Color(0x79ffe39b), Color(0xffffe39b)],
                            stops: <double>[0.453, 1],
                          ),
                          boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                                  width: 106*fem,
                                  height: 85*fem,
                                  child: Image.asset(
                                    'assets/images/practice.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                  'Learn &\nPractice',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*ffem/fem,
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
            margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 0*fem),
            height: 143*fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ), 
                  child: Container(
                    padding: EdgeInsets.fromLTRB(4*fem, 6*fem, 5*fem, 15*fem),
                    width: 115*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                      gradient: const LinearGradient (
                        begin: Alignment(0.252, -0.483),
                        end: Alignment(-0.791, 0.916),
                        colors: <Color>[Color(0xffb75bff), Color(0x6ab75bff)],
                        stops: <double>[0, 0.62],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                          width: 106*fem,
                          height: 85*fem,
                          child: Image.asset(
                            'assets/images/coach.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Coach',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 21*fem,
                ),
                TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ), 
                  child:Container(
                    width: 115*fem,
                    height: double.infinity,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(9*fem, 6*fem, 10*fem, 14*fem),
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                        gradient: const LinearGradient (
                          begin: Alignment(1.696, -1.434),
                          end: Alignment(0.261, 0.49),
                          colors: <Color>[Color(0x4dfeafaf), Color(0xffafcafe)],
                          stops: <double>[0.599, 1],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                            width: 96*fem,
                            height: 96*fem,
                            child: Image.asset(
                              'assets/images/store.png',
                                fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2.73*fem, 0*fem, 0*fem, 0*fem),
                            child: Text(
                              'Store',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
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
                  width: 21*fem,
                ),
                TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ), 
                  child: Container(
                    padding: EdgeInsets.fromLTRB(3*fem, 6*fem, 0*fem, 14*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                      gradient: const LinearGradient (
                        begin: Alignment(0.774, 1),
                        end: Alignment(-0.313, -0.552),
                        colors: <Color>[Color(0x6ef96ffb), Color(0x6ef900ff)],
                        stops: <double>[0.354, 0.958],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                          width: 112*fem,
                          height: 85*fem,
                          child: Image.asset(
                            'assets/images/news.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.73*fem, 0*fem, 0*fem, 0*fem),
                         child: Text(
                            'News',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
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
      ],
      ),
    );
  }
}
