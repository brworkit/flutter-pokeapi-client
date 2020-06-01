import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/providers/pokemons.dart';
import 'package:pokeapp/widgets/pokemons_grid.dart';
import 'package:provider/provider.dart';

class PokemonOverviewPage extends StatelessWidget {
  const PokemonOverviewPage() : super();

  @override
  Widget build(BuildContext context) {
    List<Pokemon> items = Provider.of<Pokemons>(context).items;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          actions: <Widget>[],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.network(
              "https://cdn.bulbagarden.net/upload/7/79/Dream_Pok%C3%A9_Ball_Sprite.png",
              fit: BoxFit.cover,
              scale: 0.1,),),

            // child: Image.network(
            //   'https://example.com/image.jpg',
            //   loadingBuilder: (BuildContext context, Widget child,
            //       ImageChunkEvent loadingProgress) {
            //     if (loadingProgress == null) return child;
            //     return Center(
            //       child: CircularProgressIndicator(
            //         value: loadingProgress.expectedTotalBytes != null
            //             ? loadingProgress.cumulativeBytesLoaded /
            //                 loadingProgress.expectedTotalBytes
            //             : null,
            //       ),
            //     );
            //   },
            // ),

          ),
          title: Text(
            "${items.length} Pokémons",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
        ),
        body: PokemonsGrid());
  }
}

// @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border.all(),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Image.network(
//         'https://example.com/image.jpg',
//         loadingBuilder: (BuildContext context, Widget child,
//             ImageChunkEvent loadingProgress) {
//           if (loadingProgress == null) return child;
//           return Center(
//             child: CircularProgressIndicator(
//               value: loadingProgress.expectedTotalBytes != null
//                   ? loadingProgress.cumulativeBytesLoaded /
//                       loadingProgress.expectedTotalBytes
//                   : null,
//             ),
//           );
//         },
//       ),
//     );
//   }
