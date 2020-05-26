import 'package:flutter/material.dart';

class PokemonDetailsBackground extends StatelessWidget {
  const PokemonDetailsBackground({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Image.network(item["imageCover"], fit: BoxFit.contain,);
  }
}