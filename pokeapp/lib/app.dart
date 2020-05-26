import 'package:flutter/material.dart';
import 'package:pokeapp/pages/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokémon',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.yellow,
        fontFamily: "Lato",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(title: 'Pokémon'),
    );
  }
}
