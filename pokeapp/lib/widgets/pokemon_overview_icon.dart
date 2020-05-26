import 'package:flutter/material.dart';

class PokemonOverviewIcon extends StatelessWidget {
  const PokemonOverviewIcon({Key key, @required this.item})
      : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite_border, color: Theme.of(context).accentColor,),
      onPressed: () {
        
      },
    );
  }
} 