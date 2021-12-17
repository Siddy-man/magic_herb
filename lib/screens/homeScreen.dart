import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List images = [
    "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/borage.jpg",
    "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/jimbu.jpg",
    "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/rue.jpg",
    "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/shiso.jpg",
    "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/sorrel.jpg",
    "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/tulsi.jpg",
    "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/turmeric.jpg"
  ];
  List titles = [
    "Borage",
    "Jimbu",
    "Rue",
    "Sisho",
    "Sorrel",
    "Tulsi",
    "Turmeric"
  ];
  int RandomNumber = Random().nextInt(7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Magic Herb", style: TextStyle(color: Colors.white,))
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding:EdgeInsets.only(left:20,top: 20),
                  child:Text("Herb Of The Day", style:TextStyle(fontSize: 30, fontWeight:FontWeight.w600)),

                )
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.width*0.55,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[

                        Container(
                          child: Image.network(images[RandomNumber]),
                          height: 120,
                          width: 120
                        ),

                        Text(titles[RandomNumber]),
                        RaisedButton(
                          onPressed:(){},
                          child: Text("Learn About This Herb")
                        )
                      ]
                    ),
                    elevation: 5,
                  )
                ),
              )
            ],
          ),
        )
    );
  }
}
