import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/widgets/pokemon_details_item_circle.dart';
import 'package:strcolor/strcolor.dart';

class PokemonDetailPage extends StatelessWidget {
  
  final Pokemon item;

  PokemonDetailPage(this.item);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = this.item.getMainTypeColor().color();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: backgroundColor.withOpacity(0.6),
        actions: <Widget>[],
        // title: Text(this.item["name"].toString().toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: backgroundColor.contrast()),),
      ),
      
      // body: PokemonDetailsItem(
      //   item: this.item,
      // ),
      body: PokemonDetailsItemCircle(
        item: this.item,
      ),

      
    );
  }
}
