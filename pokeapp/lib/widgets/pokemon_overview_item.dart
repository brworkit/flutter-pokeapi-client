import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/pages/pokemon_detail_page.dart';
import 'package:pokeapp/widgets/pokemon_overview_background.dart';
import 'package:pokeapp/widgets/pokemon_overview_number.dart';
import 'package:pokeapp/widgets/badges_line.dart';
import 'package:pokeapp/widgets/pokemon_overview_title.dart';
import 'package:pokeapp/widgets/pokemon_overview_icon.dart';

class PokemonOverviewItem extends StatelessWidget {
  final index;

  const PokemonOverviewItem({Key key, @required this.item, this.index}) : super(key: key);

  final Pokemon item;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PokemonDetailPage(this.index)));
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: PokemonOverviewBackground(item: item),
          ),
        ),
        header: GridTileBar(
          title: BadgesLine(item: this.item),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black26,
          leading: PokemonOverviewNumber(item: this.item),
          title: PokemonOverviewTitle(item: this.item),
          trailing: PokemonOverviewIcon(item: this.item),
        ),
      ),
    );
  }
}
