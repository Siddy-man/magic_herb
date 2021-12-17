import 'package:flutter/material.dart';
import 'package:magic_herb/screens/herbDescriptionScreen.dart';


class LearnScreen extends StatefulWidget {
  const LearnScreen({Key? key}) : super(key: key);

  @override
  _LearnScreenState createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Text("Learn About Herbs!", style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Flexible(
              child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (context, int index) {
                  return cartItems(index);
                },
              ),
            ),
          ],
        )
    );
  }
  Widget cartItems(int index) {
    return Card(
      margin: const EdgeInsets.all(5),
      color: Colors.white,
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        height: 250,
        width: MediaQuery.of(context).size.width*0.9,
        child: Container(
          padding: const EdgeInsets.all(0),
          margin: EdgeInsets.all(10),
          height: 130,
          child: Row(
            children: <Widget>[
              Container(
                width: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(images[index]),
                      fit: BoxFit.cover,
                    )),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              titles[index],
                              overflow: TextOverflow.fade,
                              softWrap: true,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                          ),
                        ],
                      ),


                      Row(
                        children: <Widget>[
                          RaisedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context) => HerbDescription(title: titles[index], image: images[index])));},
                            child: Text("Learn About This Herb")
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

