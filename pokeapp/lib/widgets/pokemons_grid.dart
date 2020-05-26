import 'package:flutter/material.dart';
import 'package:pokeapp/widgets/pokemon_overview_item.dart';

class PokemonsGrid extends StatelessWidget {
  const PokemonsGrid({
    Key key,
    @required this.items,
  }) : super(key: key);

  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
          return PokemonOverviewItem(item: this.items[index]);
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