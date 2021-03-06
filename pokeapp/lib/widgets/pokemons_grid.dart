import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/providers/pokemons.dart';
import 'package:pokeapp/widgets/pokemon_overview_item.dart';
import 'package:provider/provider.dart';

class PokemonsGrid extends StatelessWidget {
  const PokemonsGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Pokemon> items = Provider.of<Pokemons>(context).items;

    if (items.isEmpty) {
      return Center(
          child: CircularProgressIndicator(
        backgroundColor: Colors.red,
      ));
    }

    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return PokemonOverviewItem(
          item: items[index],
          index: index,
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 10,
      ),
    );
  }
}
