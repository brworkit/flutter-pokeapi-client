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
      appBar: CustomAppBar(titleText: "Pokemons",),
      body: PokemonsGrid(items: items)      
    );
  }
}


