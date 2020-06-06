import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';

class PokemonOverviewTitle extends StatelessWidget {
  const PokemonOverviewTitle({Key key, @required this.item}) : super(key: key);

  final Pokemon item;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
          child: Text(
          item.getName().toUpperCase(),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
          textAlign: TextAlign.center,
        ),
    );
  }
}
