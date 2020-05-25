import 'package:flutter/material.dart';
import 'package:pokeapp/widgets/pokemon_overview_leading.dart';
import 'package:pokeapp/widgets/pokemon_overview_subtitle.dart';
import 'package:pokeapp/widgets/pokemon_overview_title.dart';
import 'package:pokeapp/widgets/pokemon_overview_trailing.dart';

class PokemonOverviewItem extends StatelessWidget {
  const PokemonOverviewItem({Key key, @required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: PokemonOverviewLeading(item: item),
      title: PokemonOverviewTitle(item: item),
      subtitle: PokemonOverviewSubtitle(item: item),
      trailing: PokemonOverviewTrailing(item: item),
    ));
  }
}
