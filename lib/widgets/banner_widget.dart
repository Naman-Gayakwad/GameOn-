import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game_on/screens/carousel_ontap.dart';
import 'package:game_on/utils/next_screen.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final List _bannerImage = [];

  getBanners() {
    return _firestore
        .collection('banners')
        .get()
        .then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        setState(() {
          _bannerImage.add(doc['image']);
        });
      }
    });
  }

  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    getBanners();
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      return setState(() {
        if (_currentPage < _bannerImage.length) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: () {
          nextScreen(context, CarouselOnTap());
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.18,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              color: Colors.purple.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)),
          child: PageView.builder(
              controller: _pageController,
              itemCount: _bannerImage.length,
              itemBuilder: (context, index) {
                return Image.network(_bannerImage[index], fit: BoxFit.cover);
              }),
        ),
      ),
    );
  }
}
