import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

  return Container(
  margin: const EdgeInsets.symmetric(vertical: 100),
  height: 2000,
  child: ListView(
  scrollDirection: Axis.horizontal,
  children: <Widget>[
  Container(
  child: Text("Aujourd'hui"),
  padding: EdgeInsets.fromLTRB(10, 5, 20, 20),
  width: 1000,
  color: Colors.blue,
  margin: EdgeInsets.all(10),
  ),
  Container(
  child: Text("Demain"),
  padding: EdgeInsets.fromLTRB(10, 5, 20, 20),
  width: 1000,
  color: Colors.green,
  margin: EdgeInsets.all(10),
  ),
  ],
  ),
  );
  }
  }

//J'ai enlevé :
// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});
