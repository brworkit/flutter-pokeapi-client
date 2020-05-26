import 'package:flutter/material.dart';
import 'package:strcolor/strcolor.dart';
import 'package:pokeapp/widgets/app_bar.dart';
import 'package:pokeapp/widgets/pokemon_details_item.dart';

class PokemonDetailPage extends StatelessWidget {
  final Map<String, dynamic> item;
  
  PokemonDetailPage(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: this.item["types"][0]["color"]["hex"].toString().color(),
      actions: <Widget>[

      ],      
      title: Text(this.item["name"].toString().toUpperCase()),       
    ),
      body: PokemonDetailsItem(item: this.item,),
    );
  }
}