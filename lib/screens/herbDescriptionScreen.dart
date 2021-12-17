import 'package:flutter/material.dart';
import 'package:magic_herb/screens/learnScreen.dart';

class HerbDescription extends StatefulWidget {
  final String image;
  final String title;
  const HerbDescription({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  _HerbDescriptionState createState() => _HerbDescriptionState();
}

class _HerbDescriptionState extends State<HerbDescription> {
  List titles = [
    "Borage",
    "Jimbu",
    "Rue",
    "Sisho",
    "Sorrel",
    "Tulsi",
    "Turmeric"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            RaisedButton(onPressed: (){Navigator.pop(context);}, child: Icon(Icons.close)),
            Text(widget.title, style: TextStyle(color: Colors.black, fontSize: 30, decoration: TextDecoration.none)),
            SizedBox(
                child: Card(child: Image.network(widget.image)),
                width: 300, height: 300
            ),
            Text("Description", style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.none)),
          ],
        ),
        decoration: BoxDecoration(color: Colors.grey)
    );
  }
}
