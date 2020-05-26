import 'package:flutter/material.dart';
import 'package:pokeapp/widgets/app_bar.dart';

class PokemonDetailPage extends StatelessWidget {
  final Map<String, dynamic> item;
  
  PokemonDetailPage(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      
    );
  }
}