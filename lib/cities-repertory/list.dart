import 'package:flutter/material.dart';
import 'dart:convert';
import '../cities-repertory/position.dart';


class GetVille extends StatelessWidget {

  @override
  Widget build1(BuildContext context) {
    String city = "Aujourd'hui";
    late Future<List<Ville>> villes;
    late List<Ville> allVilles = [];
  }


  callback(varCity) {
    setState(() {
      city = varCity;
    });
  }
}
  @override
  void initState() {
    super.initState();
    const city = 'Big Guys'; // ?
    const villes = getVille(context);
    villes.then((value) {
      setState(() {
        const allVilles = value;
      });
    });
  }

  dynamic Future<List<Ville>> getVille(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/villes.json');
    final body = json.decode(data);
    return body.map<Ville>((json) => Ville.fromJson(json)).toList();
  }
