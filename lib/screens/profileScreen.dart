import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(children: [
        Container(margin: EdgeInsets.only(left: 230), child: RaisedButton(onPressed: (){}, child: SizedBox(child: Row(children: [Icon(Icons.logout, size: 30, color: Colors.grey), Text("Logout", style:TextStyle(color: Colors.grey),)],), height:50, width:100))),
        SizedBox(child: Icon(Icons.account_box,
            size: 30,
            color: Colors.grey), height: 280, width:MediaQuery.of(context).size.width),
        Card(child: SizedBox(
          child: Column(children: [
            Text("Profile", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            Text("Username:"),
            Text(""),
            Text("Email:"),
            Text(""),
            Text("About Me:"),
            Text("")
          ],),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2
        ),
        )
      ],),
      decoration: BoxDecoration(color: Color.fromRGBO(230, 230, 230, 1)),
    );
  }
}
