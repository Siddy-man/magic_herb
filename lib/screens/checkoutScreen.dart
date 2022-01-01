import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final List<String> categories = [
    'DarazMall',
    'Flash Sales',
    'Collection',
    'Vouchers',
    'Categories'
  ];
  final List<String> images = [
    "https://image.freepik.com/free-vector/credit-card-vector_23-2147498028.jpg",
    "https://image.freepik.com/free-vector/credit-card-vector_23-2147498028.jpg",
    "https://image.freepik.com/free-vector/credit-card-vector_23-2147498028.jpg",
    "https://image.freepik.com/free-vector/credit-card-vector_23-2147498028.jpg"
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1E5128),
        title: Text('Checkout'),
        elevation: 0,
      ),
      body: SafeArea(
          child: Stack(children: [
            ClipPath(
              clipper: DiagonalPathClipperOne(),
              child: Container(
                height: 110,
                color: Color(0xff1E5128),
              ),
            ),
            Positioned(left: MediaQuery.of(context).size.width * 0.05,child: SizedBox(height: MediaQuery.of(context).size.height * 0.3, width: MediaQuery.of(context).size.width * 0.9, child: Card(child:Image.network("https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/03-removebg-preview.png")))),
            Positioned(child: Text("Payment Details", style: TextStyle(color: Colors.grey[500])))
          ]),
    ));
  }
}