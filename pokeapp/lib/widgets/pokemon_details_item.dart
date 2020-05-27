import 'package:flutter/material.dart';
import 'package:pokeapp/pages/pokemon_detail_page.dart';
import 'package:pokeapp/widgets/pokemon_details_background.dart';
import 'package:pokeapp/widgets/pokemon_details_types_badges.dart';
import 'package:pokeapp/widgets/pokemon_overview_background.dart';
import 'package:pokeapp/widgets/pokemon_overview_number.dart';
import 'package:pokeapp/widgets/pokemon_overview_types_badges.dart';
import 'package:pokeapp/widgets/pokemon_overview_title.dart';
import 'package:pokeapp/widgets/pokemon_overview_icon.dart';
import 'package:strcolor/strcolor.dart';

class PokemonDetailsItem extends StatelessWidget {
  const PokemonDetailsItem({Key key, @required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      // color: this.item["types"][0]["color"].toString().color(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(                    
          child: GridTile(      
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PokemonDetailPage(this.item)));
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: PokemonDetailsBackground(item: item),
              ),
            ),
            header: GridTileBar(
              title: PokemonDetailsTypesBadges(item: this.item),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black38,
              leading: PokemonOverviewNumber(item: this.item),
              title: PokemonOverviewTitle(item: this.item),
              trailing: PokemonOverviewIcon(item: this.item),
            ),
          ),
        ),
      ),
    );
  }
}