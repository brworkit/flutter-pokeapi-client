import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';

class PokemonOverviewBackground extends StatelessWidget {
  const PokemonOverviewBackground({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Pokemon item;

  @override
  Widget build(BuildContext context) {    
    return Image.network(item.getIcon(), fit: BoxFit.contain,);
  }
}