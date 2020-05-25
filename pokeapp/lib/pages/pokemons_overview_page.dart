import 'package:flutter/material.dart';

import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/widgets/pokemon_overview_item.dart';

class PokemonOverviewPage extends StatelessWidget {

  const PokemonOverviewPage(this.items) : super();

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

// (context, index) {
//           return PokemonOverviewItem(item: this.items[index]);
//         }
  // @override
  // Widget build(BuildContext context) {
  //   return SliverList(
  //     delegate: SliverChildBuilderDelegate(
  //       (context, index) {
  //         return PokemonOverviewItem(item: this.items[index]);
  //       },
  //       childCount: items.length,
  //     ),
  //   );
  // }
}
