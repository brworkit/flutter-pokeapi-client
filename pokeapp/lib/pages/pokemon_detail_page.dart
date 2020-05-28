import 'package:flutter/material.dart';
import 'package:pokeapp/widgets/pokemon_details_item_circle.dart';
import 'package:strcolor/strcolor.dart';
import 'package:pokeapp/widgets/app_bar.dart';
import 'package:pokeapp/widgets/pokemon_details_item.dart';

class PokemonDetailPage extends StatelessWidget {
  final Map<String, dynamic> item;

  PokemonDetailPage(this.item);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        this.item["types"][0]["color"]["hex"].toString().color();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: backgroundColor,
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
