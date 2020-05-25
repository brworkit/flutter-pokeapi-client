import 'package:flutter/material.dart';

import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/widgets/pokemon_overview_item.dart';

class PokemonOverviewPage extends StatelessWidget {

  const PokemonOverviewPage(this.items) : super();

  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return PokemonOverviewItem(item: this.items[index]);
        },
        childCount: items.length,
      ),
    );
  }
}
