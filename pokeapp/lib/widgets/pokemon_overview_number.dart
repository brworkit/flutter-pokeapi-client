import 'package:flutter/material.dart';
import 'package:pokeapp/extensions/multi_badges.dart';
import 'package:pokeapp/models/pokemon.dart';

class PokemonOverviewNumber extends StatelessWidget {
  const PokemonOverviewNumber({Key key, @required this.item}) : super(key: key);

  final Pokemon item;

  @override
  Widget build(BuildContext context) {
    return HexaRectangleBadge(
      backgroundColor: Colors.red.withOpacity(0.6),
      width: 30,
      padding: EdgeInsets.all(2),
      child: Text(
        "#" + item.getId().toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
