import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/providers/pokemons.dart';
import 'package:pokeapp/widgets/pokemon_details_item_circle.dart';
import 'package:provider/provider.dart';
import 'package:strcolor/strcolor.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PokemonDetailPage extends StatefulWidget {
  final int index;

  PokemonDetailPage(this.index);

  @override
  _PokemonDetailPageState createState() => _PokemonDetailPageState(this.index);
}

class _PokemonDetailPageState extends State<PokemonDetailPage> {
  CarouselController carouselController = CarouselController();
  Color backgroundColor;
  int index;
  
  _PokemonDetailPageState(this.index) {
    
  }

  onPageChanged(int index, CarouselPageChangedReason reason) {    
    setState(() {
        this.index = index;
    }); 
  }

  setCenterPokemon(context, index) {
    List<Pokemon> items = Provider.of<Pokemons>(context).items;

    
    setState(() {
      var item = items[index];      
      this.backgroundColor = item.getMainTypeColor().color();      
    });        
  }


  @override
  Widget build(BuildContext context) {
    List<Pokemon> items = Provider.of<Pokemons>(context).items;    
    setCenterPokemon(context, this.index);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: backgroundColor.withOpacity(0.7),
        actions: <Widget>[],        
      ),
      body: Container(            
        height: double.infinity,
        color: backgroundColor.withOpacity(0.1),        
        child: CarouselSlider.builder(
          itemCount: items.length,
          carouselController: carouselController,
          itemBuilder: (BuildContext context, int itemIndex) {          
            return PokemonDetailsItemCircle(
              item: items[itemIndex],
            );
          },
          options: CarouselOptions( 
              height: MediaQuery.of(context).size.height * 0.80,    
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 1.0,
              initialPage: index,
              enableInfiniteScroll: false,
              onPageChanged: onPageChanged),
        ),
      ),
    );
  }
}
