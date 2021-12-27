import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Your Cart"), automaticallyImplyLeading: false,),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                GroceryListItemThree(
                  image: "https://image.freepik.com/free-vector/hand-drawn-fruit-collection_23-2148941359.jpg",
                  subtitle: "4 in a pack",
                  title: "Pineapple",
                ),
                GroceryListItemThree(
                  image: "https://image.freepik.com/free-vector/hand-drawn-fruit-collection_23-2148941359.jpg",
                  subtitle: "1 kg",
                  title: "cabbage",
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          _buildTotals()
        ],
      ),
    );
  }

  Widget _buildTotals() {
    return ClipPath(
      clipper: OvalTopBorderClipper(),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 5.0,color: Colors.grey.shade700,spreadRadius: 80.0),
          ],
          color: Colors.white,
        ),
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Subtotal"),
                Text("Rs. 1500"),
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Delivery fee"),
                Text("Rs. 100"),
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Total"),
                Text("Rs. 1600"),
              ],
            ),
            SizedBox(height: 10.0,),
            RaisedButton(
              color: Colors.green,
              onPressed: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Continue to Checkout", style: TextStyle(color: Colors.white)),
                  Text("Rs. 1600", style: TextStyle(color: Colors.white)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GroceryListItemThree extends StatelessWidget {
  const GroceryListItemThree({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    this.price,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String image;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          const SizedBox(width: 10.0),
          Container(
              height: 80.0,
              child: Image.network(
                image,
                height: 80.0,
              )),
          const SizedBox(width: 10.0),
          Expanded(
            child: Container(
              height: 120.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(title),
                  new Text(subtitle)
                ],
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add_circle),
                color: Colors.green,
                onPressed: () {},
              ),
              Text(
                "1",
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(
                  Icons.remove_circle,
                ),
                color: Colors.green,
                onPressed: () {},
              )
            ],
          ),
          const SizedBox(width: 10.0),
        ],
      ),
    );
  }
}
