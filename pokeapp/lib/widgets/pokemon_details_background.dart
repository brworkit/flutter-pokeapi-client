import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';

class PokemonDetailsBackground extends StatelessWidget {
  const PokemonDetailsBackground({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Pokemon item;

  @override
  Widget build(BuildContext context) {
    return Image.network(item.getImageCover(), fit: BoxFit.scaleDown,);
  }
}