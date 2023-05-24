import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ProductDetail extends StatefulWidget {
  final dynamic productData;

  const ProductDetail({super.key, required this.productData});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          widget.productData['productName'],
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: PhotoView(
                  imageProvider: NetworkImage(widget.productData['image']),
                ),
              ),
              // Positioned(child: Container(
              //   height: 50,
              //   width: MediaQuery.of(context).size.width,
              // ))
            ],
          ),
          SizedBox(height: 20),
          Text(
            '\₹' + widget.productData['price'].toString(),
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent),
          ),
          Text(
            '\₹' + widget.productData['productName'].toString(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
