import 'package:flutter/material.dart';

class ProjectDescriptionScreen extends StatefulWidget {
  const ProjectDescriptionScreen({Key? key}) : super(key: key);

  @override
  _ProjectDescriptionScreenState createState() => _ProjectDescriptionScreenState();
}

class _ProjectDescriptionScreenState extends State<ProjectDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 320),

            child: SizedBox(width: 50, height: 50, child: FlatButton(color: Colors.black.withOpacity(0), onPressed: (){Navigator.pop(context);}, child: Icon(Icons.close))),
          ),
          Text("Project Name", style: TextStyle(color: Colors.black, fontSize: 30, decoration: TextDecoration.none)),
          SizedBox(
            child: Card(child: Image.network("")),
            width: 300, height: 300
          ),
          Text("Description", style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.none)),
          Center(
            child: Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 4),
                Text("Link To Video:", style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.none)),
                Text("link here", style: TextStyle(color: Colors.blueAccent, decoration: TextDecoration.underline, fontSize: 15))
              ],
            ),
          ),
          Center(child: Text("This was made by" + "___" + ".", style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.none))),
        ],
      ),
      decoration: BoxDecoration(color: Colors.grey)
    );
  }
}
