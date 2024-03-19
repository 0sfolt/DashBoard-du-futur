import 'package:flutter/material.dart';
import '../cities-repertory/search.dart';
import '../cities-repertory/villefrance.dart';
import '../cities-repertory/position.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key,  this.home}) : super(key: key);
  final String home;

  @override
  State<HomePage> createState() => _HomePageState ();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        centerTitle: true,
        title: Text("La meteo"),
        actions: [
          SizedBox(
            width: 250.0,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  CitySearch(callback: callback, villes: allVilles),
                ],
              ),
            ),
          ),
        ],
        backgroundColor: Colors.blue,
      ),
    );
  }
  Widget build2(BuildContext context) {
    return  Container(
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
