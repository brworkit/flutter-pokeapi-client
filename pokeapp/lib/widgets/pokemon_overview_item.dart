import 'package:flutter/material.dart';
import 'package:pokeapp/widgets/pokemon_overview_background.dart';
import 'package:pokeapp/widgets/pokemon_overview_number.dart';
import 'package:pokeapp/widgets/pokemon_overview_subtitle.dart';
import 'package:pokeapp/widgets/pokemon_overview_title.dart';
import 'package:pokeapp/widgets/pokemon_overview_icon.dart';

class PokemonOverviewItem extends StatelessWidget {
  const PokemonOverviewItem({Key key, @required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: PokemonOverviewBackground(item: item),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: PokemonOverviewNumber(item: this.item),
        title: PokemonOverviewTitle(item: this.item),
        // subtitle: PokemonOverviewSubtitle(item: this.item),
        trailing: PokemonOverviewIcon(item: this.item),
      ),
      // leading: PokemonOverviewIcon(item: item),
      // title: PokemonOverviewTitle(item: item),
      // subtitle: PokemonOverviewSubtitle(item: item),
      // trailing: PokemonOverviewNumber(item: item),
    );

    // return Card(
    //     child: ListTile(
    //   leading: PokemonOverviewIcon(item: item),
    //   title: PokemonOverviewTitle(item: item),
    //   subtitle: PokemonOverviewSubtitle(item: item),
    //   trailing: PokemonOverviewNumber(item: item),
    // ));
  }
}
