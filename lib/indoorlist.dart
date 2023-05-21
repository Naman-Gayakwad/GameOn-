import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game_on/screens/mainpage.dart';
import 'package:game_on/utils/next_screen.dart';

class IndoorList extends StatefulWidget {
  const IndoorList({super.key});

  @override
  State<IndoorList> createState() => _IndoorListState();
}

class _IndoorListState extends State<IndoorList> {
  double screenHeight = 0;
  double screenWidth = 0;

  bool startAnimation = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _indoorlistStream =
        FirebaseFirestore.instance.collection('indoorlist').snapshots();
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 932 * fem,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 236, 236, 236),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/typeback.png',
              ),
            ),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth / 20,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    //   setState(() {
                    //     startAnimation = true;
                    //   });
                    // });
                  },
                  child: const Text(
                    "In-Door",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                StreamBuilder<QuerySnapshot>(
                    stream: _indoorlistStream,
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return const Text('Something went wrong');
                      }

                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Text("Loading");
                      }

                      return GestureDetector(
                        onTap: () {
                          nextScreen(
                            context,
                            MainPage(),
                          );
                        },
                        child: ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            final indoorlistData = snapshot.data!.docs[index];
                            return AnimatedContainer(
                              height: 70,
                              width: screenWidth,
                              curve: Curves.easeInOut,
                              duration:
                                  Duration(milliseconds: 300 + (index * 200)),
                              transform: Matrix4.translationValues(
                                  startAnimation ? 0 : screenWidth, 0, 0),
                              margin: const EdgeInsets.only(
                                bottom: 12,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: screenWidth / 20,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFE0EAFC),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  print(
                                      "Selected Indoor Sport : ${indoorlistData['sportName']} ");
                                  nextScreen(
                                    context,
                                    MainPage(),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      indoorlistData['sportName'],
                                      style: const TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
