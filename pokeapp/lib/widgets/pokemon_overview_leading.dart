import 'package:flutter/material.dart';

class PokemonOverviewLeading extends StatelessWidget {
  const PokemonOverviewLeading({Key key, @required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      item["image"],
      fit: BoxFit.cover,
    );
  }
}
