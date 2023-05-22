import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class StoreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _StoreGridStream =
        FirebaseFirestore.instance.collection('ProductList').snapshots();
    return StreamBuilder<QuerySnapshot>(
        stream: _StoreGridStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              separatorBuilder: (context, _) => SizedBox(
                width: 7,
              ),
              itemCount: snapshot.data!.docs.length,
              // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2, // Number of columns in the grid
              //     crossAxisSpacing: 10.0, // Spacing between adjacent columns
              //     mainAxisSpacing: 10.0,
              //     childAspectRatio: 0.8 // Spacing between adjacent rows
              //     ),
              itemBuilder: (context, index) {
                final productlistData = snapshot.data!.docs[index];
                return ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10.0))),
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Image(image: productlistData['image']),
                        ),
                        Text(
                          productlistData['productName'],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        });
  }
}
