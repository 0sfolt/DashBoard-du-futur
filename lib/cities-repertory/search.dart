import 'package:flutter/material.dart';
import 'dart:convert';

//import ville
//import icon

class CitySearch extends StatelessWidget {
  final Function callback;
  final List<Ville> villes;

  CitySearch({required this.callback, required this.villes});

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return villes.where((Ville option) {
          return option.nomAvecArticle!
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase());
        }).map((Ville ville) => ville.nomAvecArticle!);
      },
      fieldViewBuilder: (BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted) {
        return TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.blue[100],
            prefixIcon: Icon(Icons.search),
            hintText: 'Rechercher une ville',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.blue.shade100),
            ),
          ),
          focusNode: focusNode,
          onFieldSubmitted: (String value) {
            onFieldSubmitted();
          },
        );
      },
      onSelected: (String selection) {
        callback(selection);
      },
    );
  }
}
