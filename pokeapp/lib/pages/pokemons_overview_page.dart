import 'package:flutter/material.dart';

import 'package:pokeapp/widgets/app_bar.dart';
import 'package:pokeapp/widgets/pokemons_grid.dart';

class PokemonOverviewPage extends StatelessWidget {

  const PokemonOverviewPage(this.items) : super();

  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        backgroundColor: Colors.red,
        actions: <Widget>[],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(            
            child: Image.network("https://cdn.bulbagarden.net/upload/7/79/Dream_Pok%C3%A9_Ball_Sprite.png", fit: BoxFit.cover, scale: 0.1,)),
        ),
        title: Text("${this.items.length} Pokémons", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),),
      ),
      body: PokemonsGrid(items: items)      
    );
  }
}


