import 'package:flutter/material.dart';

//import ville
//import citysearch

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
