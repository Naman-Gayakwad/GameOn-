
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../utils.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _productStream =
        FirebaseFirestore.instance.collection('productList').snapshots();
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return StreamBuilder<QuerySnapshot>(
      stream: _productStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return SingleChildScrollView(
          child: Container(
            height: 370,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  final productData = snapshot.data!.docs[index];
                  return Image.network(productData['image']);
                },
                separatorBuilder: (context, _) => SizedBox(
                      width: 15,
                    ),
                itemCount: snapshot.data!.docs.length),
          ),
        );
      },
    );
    //  SingleChildScrollView(
    //   child: Container(
    //     // jk2 (1:183)
    //     padding: EdgeInsets.fromLTRB(26 * fem, 95 * fem, 25 * fem, 102 * fem),
    //     width: double.infinity,
    //     decoration: BoxDecoration(
    //       color: Color(0xffffffff),
    //     ),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Container(
    //           margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 47 * fem),
    //           width: double.infinity,
    //           height: 213 * fem,
    //           child: Row(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               Container(
    //                 margin:
    //                     EdgeInsets.fromLTRB(0 * fem, 0 * fem, 31 * fem, 0 * fem),
    //                 padding: EdgeInsets.fromLTRB(
    //                     26 * fem, 172 * fem, 28 * fem, 16 * fem),
    //                 height: double.infinity,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20 * fem),
    //                   gradient: const LinearGradient(
    //                     begin: Alignment(1.696, -1.434),
    //                     end: Alignment(0.261, 0.49),
    //                     colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
    //                     stops: <double>[0.448, 1],
    //                   ),
    //                   boxShadow: [
    //                     BoxShadow(
    //                       color: Color(0x3f000000),
    //                       offset: Offset(0 * fem, 4 * fem),
    //                       blurRadius: 2 * fem,
    //                     ),
    //                   ],
    //                 ),
    //                 child: Text(
    //                   'Chess board',
    //                   style: SafeGoogleFont(
    //                     'Inter',
    //                     fontSize: 20 * ffem,
    //                     fontWeight: FontWeight.w400,
    //                     height: 1.2125 * ffem / fem,
    //                     color: Color(0xff000000),
    //                   ),
    //                 ),
    //               ),
    //               Container(

    //                 width: 174 * fem,
    //                 height: 213 * fem,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20 * fem),
    //                   gradient: const LinearGradient(
    //                     begin: Alignment(1.696, -1.434),
    //                     end: Alignment(0.261, 0.49),
    //                     colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
    //                     stops: <double>[0.448, 1],
    //                   ),
    //                   boxShadow: [
    //                     BoxShadow(
    //                       color: Color(0x3f000000),
    //                       offset: Offset(0 * fem, 4 * fem),
    //                       blurRadius: 2 * fem,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Container(

    //           margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 45 * fem),
    //           width: double.infinity,
    //           child: Row(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               Container(

    //                 margin:
    //                     EdgeInsets.fromLTRB(0 * fem, 0 * fem, 31 * fem, 0 * fem),
    //                 width: 174 * fem,
    //                 height: 216 * fem,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20 * fem),
    //                   gradient: const LinearGradient(
    //                     begin: Alignment(1.696, -1.434),
    //                     end: Alignment(0.261, 0.49),
    //                     colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
    //                     stops: <double>[0.448, 1],
    //                   ),
    //                   boxShadow: [
    //                     BoxShadow(
    //                       color: Color(0x3f000000),
    //                       offset: Offset(0 * fem, 4 * fem),
    //                       blurRadius: 2 * fem,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               Container(

    //                 width: 174 * fem,
    //                 height: 216 * fem,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20 * fem),
    //                   gradient: const LinearGradient(
    //                     begin: Alignment(1.696, -1.434),
    //                     end: Alignment(0.261, 0.49),
    //                     colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
    //                     stops: <double>[0.448, 1],
    //                   ),
    //                   boxShadow: [
    //                     BoxShadow(
    //                       color: Color(0x3f000000),
    //                       offset: Offset(0 * fem, 4 * fem),
    //                       blurRadius: 2 * fem,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Container(

    //           width: double.infinity,
    //           child: Row(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               Container(

    //                 margin:
    //                     EdgeInsets.fromLTRB(0 * fem, 0 * fem, 31 * fem, 0 * fem),
    //                 width: 174 * fem,
    //                 height: 214 * fem,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20 * fem),
    //                   gradient: const LinearGradient(
    //                     begin: Alignment(1.696, -1.434),
    //                     end: Alignment(0.261, 0.49),
    //                     colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
    //                     stops: <double>[0.448, 1],
    //                   ),
    //                   boxShadow: [
    //                     BoxShadow(
    //                       color: Color(0x3f000000),
    //                       offset: Offset(0 * fem, 4 * fem),
    //                       blurRadius: 2 * fem,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               Container(

    //                 width: 174 * fem,
    //                 height: 214 * fem,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20 * fem),
    //                   gradient: const LinearGradient(
    //                     begin: Alignment(1.696, -1.434),
    //                     end: Alignment(0.261, 0.49),
    //                     colors: <Color>[Color(0x4dafcafe), Color(0xffafcafe)],
    //                     stops: <double>[0.448, 1],
    //                   ),
    //                   boxShadow: [
    //                     BoxShadow(
    //                       color: Color(0x3f000000),
    //                       offset: Offset(0 * fem, 4 * fem),
    //                       blurRadius: 2 * fem,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
=======
>>>>>>> 47ff5b6fb111a8729b4c51280b6d9d0a5bc39923
