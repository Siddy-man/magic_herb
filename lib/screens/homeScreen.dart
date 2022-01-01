import 'dart:math';

import 'package:flutter/material.dart';
import 'package:magic_herb/screens/projectDescriptionScreen.dart';

import 'herbDescriptionScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController = ScrollController();
  Color? appBarBackground;
  late double topPosition;
  @override
  void initState() {
    topPosition = -80;
    appBarBackground = Colors.transparent;
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  double _getOpacity() {
    double op = (topPosition + 80) / 80;
    return op > 1 || op < 0 ? 1 : op;
  }

  _onScroll() {
    if (_scrollController.offset > 50) {
      if (topPosition < 0)
        setState(() {
          topPosition = -130 + _scrollController.offset;
          if (_scrollController.offset > 130) topPosition = 0;
        });
    } else {
      if (topPosition > -80)
        setState(() {
          topPosition--;
          if (_scrollController.offset <= 0) topPosition = -80;
        });
    }
  }

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
  List greetings = [
    "Welcome Back ",
    "What's Up ",
    "Let's go ",
    "Get ready to have some fun ",
    "Hi "
  ];
  int randomNumber = Random().nextInt(7);
  int randomGreeting = Random().nextInt(5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 16.0, right: 50),
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0)),
                    color: Color(0xff1E5128),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 70),
                      Text(
                        "Homescreen",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.white),
                      ),
                      const SizedBox(height: 20.0),
                      Text(greetings[randomGreeting] + "(UserName)" + "!👋" ,style:TextStyle(fontSize: 20, fontWeight:FontWeight.w400, color: Colors.grey))
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                const SizedBox(height: 20.0),
                        Container(color: Colors.red, height: 300, child:
                        Column(
                          children: <Widget>[
                        Container(
                        width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://image.freepik.com/free-photo/top-view-cooked-pearl-barley-inside-plate-with-notepad-light-surface_140725-75115.jpg'),
                                  fit: BoxFit.cover)),
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  color: Color.fromRGBO(30, 81, 40, 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      " Deal Of The Day ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 40),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff1E5128)),
                                  child: Center(
                                      child: Text(
                                        "Shop Now",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        ])),

                const SizedBox(height: 30.0),
                Container(color: Colors.red, height: 300, child:
                Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    images[randomNumber]),
                                fit: BoxFit.cover)),
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                color: Color.fromRGBO(30, 81, 40, 0.5),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Herb Of The Day",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff1E5128)),
                                child: Center(
                                    child: Text(
                                      "Explore",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ])),
                const SizedBox(height: 30.0),
                Container(color: Colors.pink, height: 300),
              ],
            ),
          ),

          Positioned(
              top: topPosition,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                padding: const EdgeInsets.only(left: 50,top: 25.0,right: 20.0),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0)),
                  color: Color(0xff1E5128).withOpacity(_getOpacity()),
                ),
                child: DefaultTextStyle(
                  style: TextStyle(),
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  child: Semantics(
                    child: Text(
                      'Homescreen',
                      style: TextStyle(color: Colors.white, fontSize: 18.0,fontWeight: FontWeight.bold),
                    ),
                    header: true,
                  ),
                ),
              )
          ),
          SizedBox(
            height: 80,
            child: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
            ),
          )
        ],
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   List images = [
//     "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/borage.jpg",
//     "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/jimbu.jpg",
//     "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/rue.jpg",
//     "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/shiso.jpg",
//     "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/sorrel.jpg",
//     "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/tulsi.jpg",
//     "https://raw.githubusercontent.com/Siddy-man/Herb-Image-MH/main/turmeric.jpg"
//   ];
//   List titles = [
//     "Borage",
//     "Jimbu",
//     "Rue",
//     "Sisho",
//     "Sorrel",
//     "Tulsi",
//     "Turmeric"
//   ];
//   List greetings = [
//     "Welcome Back ",
//     "What's Up ",
//     "Let's go ",
//     "Get ready to have some fun ",
//     "Hi "
//   ];
//   int randomNumber = Random().nextInt(7);
//   int randomGreeting = Random().nextInt(5);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Center(child: Text(greetings[randomGreeting] + "(UserName)" + "!👋" ,style:TextStyle(fontSize: 30, fontWeight:FontWeight.bold)),),
//               Center(
//                 child: Padding(
//                   padding:EdgeInsets.only(left:20,top: 50),
//                   child:Text("Herb Of The Day", style:TextStyle(fontSize: 30, fontWeight:FontWeight.w600)),
//                 )
//               ),
//               Center(
//                 child: Column(
//                   children: [
//                     Container(
//                       width: MediaQuery.of(context).size.width*0.9,
//                       height: MediaQuery.of(context).size.height*0.3,
//                       child: Card(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children:[
//
//                             Container(
//                               child: Image.network(images[randomNumber]),
//                               height: 120,
//                               width: 120
//                             ),
//
//                             Text(titles[randomNumber]),
//                             RaisedButton(
//                                 onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context) => HerbDescription(title: titles[randomNumber], image: images[randomNumber])));},
//                               child: Text("Learn About This Herb")
//                             ),
//                             RaisedButton(
//                                 onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context) => HerbDescription(title: titles[randomNumber], image: images[randomNumber])));},
//                                 child: Text("Browse products/recipes with this herb")
//                             )
//                           ]
//                         ),
//                         elevation: 5,
//                       )
//                     ),
//                     SizedBox(height: 20),
//                     Container(
//                         width: MediaQuery.of(context).size.width*0.9,
//                         height: MediaQuery.of(context).size.height*0.45,
//                         child: Card(
//                           child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children:[
//                                 Container(
//                                   child: Center(child: Text("Deal Of The Day", style:TextStyle(color: Colors.white, fontSize: 30, fontWeight:FontWeight.w600))),
//                                   width: MediaQuery.of(context).size.width*0.9,
//                                   color: Colors.redAccent
//                                 ),
//                                 SizedBox(height: 20),
//                                 Text("Example Recipe"),
//                                 Image.network(""),
//                                 RaisedButton(
//                                     onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => ProjectDescriptionScreen()));},
//                                     child: Text("View This Item")
//                                 )
//                               ]
//                           ),
//                           elevation: 5,
//                         )
//                     ),
//                 ],
//               )
//               ),
//           ],
//         )
//     ));
//   }
// }
