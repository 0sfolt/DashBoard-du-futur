import 'package:flutter/material.dart';

import '../home/home_page.dart';
// import cities-repertory/position
//import main_screen
//import cities-repertory/list
//  import scaffold-layout
// import main-screen
// import cities-repertory/search

void main() => runApp(MyApp());

//Any preprocessing can be done here

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La météo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        home: const HomePage(),
      ),
    );
  }
}


