import 'package:flutter/material.dart';
import 'dart:convert';
//import HomePage
//import class ville




  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String city = "Aujourd'hui";
  late Future<List<Ville>> villes;
  late List<Ville> allVilles = [];

  callback(varCity) {
    setState(() {
      city = varCity;
    });
  }

  @override
  void initState() {
    super.initState();
    city = 'Big Guys'; // ?
    villes = getVille(context);
    villes.then((value) {
      setState(() {
        allVilles = value;
      });
    });
  }

  static Future<List<Ville>> getVille(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/villes.json');
    final body = json.decode(data);
    return body.map<Ville>((json) => Ville.fromJson(json)).toList();
  }
}