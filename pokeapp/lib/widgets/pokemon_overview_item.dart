import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/pages/pokemon_detail_page.dart';
import 'package:pokeapp/widgets/pokemon_overview_background.dart';
import 'package:pokeapp/widgets/pokemon_overview_number.dart';
import 'package:pokeapp/widgets/pokemon_overview_types_badges.dart';
import 'package:pokeapp/widgets/pokemon_overview_title.dart';
import 'package:pokeapp/widgets/pokemon_overview_icon.dart';

class PokemonOverviewItem extends StatelessWidget {
  const PokemonOverviewItem({Key key, @required this.item}) : super(key: key);

  final Pokemon item;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PokemonDetailPage(this.item)));
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: PokemonOverviewBackground(item: item),
          ),
        ),
        header: GridTileBar(
          title: PokemonOverviewTypesBadges(item: this.item),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black38,
          leading: PokemonOverviewNumber(item: this.item),
          title: PokemonOverviewTitle(item: this.item),
          trailing: PokemonOverviewIcon(item: this.item),
        ),
      ),
    );
  }
}
