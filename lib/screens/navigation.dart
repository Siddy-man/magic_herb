import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:magic_herb/screens/homeScreen.dart';
import 'package:magic_herb/screens/profileScreen.dart';
import 'doScreen.dart';
import 'learnScreen.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<Widget> _tabItems = [HomeScreen(), LearnScreen(), DoScreen(), ProfileScreen()];
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50,
        items: [
          Icon(Icons.home_filled,
              size: 30,
              color: (_page == 0) ? Colors.green : Colors.white),
          Icon(Icons.airport_shuttle_sharp,
              size: 30,
              color: (_page == 1) ? Colors.green : Colors.white),
          Icon(Icons.group_add,
              size: 30,
              color: (_page == 2) ? Colors.green : Colors.white),
          Icon(Icons.account_box,
              size: 30,
              color: (_page == 3) ? Colors.green : Colors.white),
        ],
        color: Color.fromRGBO(100, 226, 100, 0.60),
        buttonBackgroundColor: Colors.grey[50],
        backgroundColor: Color.fromRGBO(100, 226, 100, 0.60),
        animationDuration: Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _tabItems[_page],
    );
  }

}

