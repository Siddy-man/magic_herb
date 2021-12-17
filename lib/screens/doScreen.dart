import 'package:flutter/material.dart';
class DoScreen extends StatefulWidget {
  const DoScreen({Key? key}) : super(key: key);

  @override
  _DoScreenState createState() => _DoScreenState();
}

class _DoScreenState extends State<DoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children:[
        Text("Do and upload recipes", style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
      ])
    );
  }
}
