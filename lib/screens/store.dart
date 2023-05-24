import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game_on/ProductDetail/product_detail.dart';
import '../utils/next_screen.dart';
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
          return Center(
            child: CircularProgressIndicator(
              color: Colors.purple,
            ),
          );
        }

        return GridView.builder(
            itemCount: snapshot.data!.size,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 200 / 300),
            itemBuilder: (context, index) {
              final productData = snapshot.data!.docs[index];
              return GestureDetector(
                onTap: () {
                  nextScreenReplace(context, ProductDetail(productData: productData,));
                },
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(productData['image']))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          productData['productName'],
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '\₹' + productData['price'].toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: Colors.purpleAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
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
