import 'package:flutter/material.dart';
import 'package:pokeapp/pages/pokemon_detail_page.dart';
import 'package:pokeapp/widgets/pokemon_details_background.dart';
import 'package:pokeapp/widgets/pokemon_details_types_badges.dart';
import 'package:pokeapp/widgets/pokemon_overview_number.dart';
import 'package:pokeapp/widgets/pokemon_overview_title.dart';
import 'package:pokeapp/widgets/pokemon_overview_icon.dart';

class PokemonDetailsItemCircle extends StatelessWidget {
  const PokemonDetailsItemCircle({Key key, @required this.item})
      : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * 0.90;
    
    return Center(
      child: Container(
          width: width,
        decoration: BoxDecoration(
            shape: BoxShape.circle,            
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:  GridTile(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PokemonDetailPage(this.item)));
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: PokemonDetailsBackground(item: item),
                ),
              ),
              header: GridTileBar(
                title: PokemonDetailsTypesBadges(item: this.item),
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black38,
                leading: PokemonOverviewNumber(item: this.item),
                title: PokemonOverviewTitle(item: this.item),
                trailing: PokemonOverviewIcon(item: this.item),
              ),
            ),
         
        ),
      ),
    );
  }


  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //         shape: BoxShape.circle,
  //         color: Colors.amber,
  //         gradient: LinearGradient(
  //             begin: Alignment.topRight,
  //             end: Alignment.bottomLeft,
  //             colors: [Colors.blue, Colors.red])),
  //     child: Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: ClipRRect(
  //         child: GridTile(
  //           child: GestureDetector(
  //             onTap: () {
  //               Navigator.of(context).push(MaterialPageRoute(
  //                   builder: (context) => PokemonDetailPage(this.item)));
  //             },
  //             child: Padding(
  //               padding: const EdgeInsets.all(4.0),
  //               child: PokemonDetailsBackground(item: item),
  //             ),
  //           ),
  //           header: GridTileBar(
  //             title: PokemonDetailsTypesBadges(item: this.item),
  //           ),
  //           footer: GridTileBar(
  //             backgroundColor: Colors.black38,
  //             leading: PokemonOverviewNumber(item: this.item),
  //             title: PokemonOverviewTitle(item: this.item),
  //             trailing: PokemonOverviewIcon(item: this.item),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
