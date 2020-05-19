import 'package:flutter/material.dart';
import 'package:pokeapp/pages/home.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokémon',
      theme: ThemeData(        
        primarySwatch: Colors.red,        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(title: 'Pokémon'),
    );
  }
}

