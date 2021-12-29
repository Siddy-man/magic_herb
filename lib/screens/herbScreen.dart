import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:magic_herb/screens/projectDescriptionScreen.dart';

import 'herbDescriptionScreen.dart';
class HerbScreen extends StatefulWidget {
  final String? herb;
  final String? image;
  HerbScreen({Key? key, this.herb, this.image}) : super(key: key);

  @override
  _HerbScreenState createState() => _HerbScreenState();
}

class _HerbScreenState extends State<HerbScreen> {
  final List<String> images = [
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Text(widget.herb.toString()),
        ))
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
                child: Column(
                  children: [

                    SizedBox(
                        child: Card(child: Image.network(widget.image.toString())),
                        width: 300, height: 300
                    ),
                    Text("Description", style: TextStyle(color: Colors.black, fontSize: 17, decoration: TextDecoration.none)),
                    SizedBox(height: 50,),
                    Text("Products With This Herb:",style: TextStyle(color: Colors.black, fontSize: 17, decoration: TextDecoration.none))
                  ],
                ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return _buildListItem(index);
              },
              childCount: images.length,
            ),
          )]));}

  Widget _buildListItem(int index) {
    return Container(
        height: 100,
        child: Card(
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(images[index % images.length]),
              ),
              title: Text(
                'Top Quality fashion item',
                softWrap: true,
              ),
              subtitle: Text(
                'Rs.1,254',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ),
        ));
  }

  _onTapItem(BuildContext pcontext, int index) {
    Navigator.of(pcontext)
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Top quality fashion item'),
        ),
        body: Material(
          child: Container(
            // The blue background emphasizes that it's a new route.
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Hero(
                          tag: "item$index",
                          child: Image.network(images[index % images.length],
                              fit: BoxFit.cover))),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Top Quality fashion item',
                    softWrap: true,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Rs.1,254',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                      color: Color(0xff191A19),
                      onPressed: () {},
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Text("Add To Cart", style:TextStyle(color: Colors.white)),
                            ),
                            Icon(Icons.add_shopping_cart_sharp,
                                color: Colors.white),
                          ]))
                ],
              ),
            ),
          ),
        ),
      );
    }));
  }
  }

