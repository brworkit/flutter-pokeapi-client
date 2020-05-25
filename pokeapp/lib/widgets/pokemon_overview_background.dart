import 'package:flutter/material.dart';

class PokemonOverviewBackground extends StatelessWidget {
  const PokemonOverviewBackground({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Image.network(item["image"], fit: BoxFit.cover,);
  }
}