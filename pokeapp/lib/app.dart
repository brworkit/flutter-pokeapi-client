import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pokeapp/pages/home.dart';
import 'package:pokeapp/providers/pokemons.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Pokemons(),
      child: MaterialApp(
        title: 'Pokémon',
        theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.yellow,
          fontFamily: "Lato",
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home(title: 'Pokémon'),
      ),
    );
  }
}
