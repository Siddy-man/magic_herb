import 'package:flutter/material.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  _DescriptionScreenState createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Herb Name"),
          SizedBox(
            child: Card(child: Image.network("")),
            width: 300, height: 300
          ),
          Text("Description"),
          Row(
            children: [
              Text("Link To Video:"),
              Text("link here", style: TextStyle(color: Colors.blueAccent, decoration: TextDecoration.underline))
            ],
          ),
          Text("This was made by" + "___" + "."),
        ],
      ),
      decoration: BoxDecoration(color: Colors.grey)
    );
  }
}
