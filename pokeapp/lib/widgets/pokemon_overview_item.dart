import 'package:flutter/material.dart';
import 'package:pokeapp/pages/pokemon_detail_page.dart';
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PokemonDetailPage(this.item)));
            },
            child: PokemonOverviewBackground(item: item)),
        header: GridTileBar(
          title: PokemonOverviewSubtitle(item: this.item),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: PokemonOverviewNumber(item: this.item),
          title: PokemonOverviewTitle(item: this.item),
          // subtitle: PokemonOverviewSubtitle(item: this.item),
          trailing: PokemonOverviewIcon(item: this.item),
        ),
      ),
    );
  }
}
