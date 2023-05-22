import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SportName extends StatelessWidget {
  final String sportName;

   SportName({super.key, required this.sportName});

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _sportnameStream =
        FirebaseFirestore.instance.collection('Sports').where('Sportname', isEqualTo: sportName).snapshots();
    double baseWidth = 425;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return StreamBuilder<QuerySnapshot>(
      stream: _sportnameStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView.builder(itemBuilder: ( context,  index) {
          final sportData = snapshot.data!.docs[index];
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              color: const Color(0xFFE0EAFC),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black),
            ),
            child:  FittedBox(
              fit: BoxFit.contain,
              child: Row(children: [
                Text(
                  sportData['Sportname'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_drop_down)
              ]),
            ),
          );
        });
      },
    );
  }
}
