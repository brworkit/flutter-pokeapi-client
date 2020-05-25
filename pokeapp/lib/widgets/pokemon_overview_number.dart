import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class PokemonOverviewNumber extends StatelessWidget {
  const PokemonOverviewNumber({Key key, @required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Badge(
        toAnimate: true,
        badgeColor: Colors.red,
        badgeContent: Text(
            item["id"].toString(),
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ));
  }
}

// import 'package:badges/badges.dart';
// import 'package:flutter/material.dart';

// class PokemonOverviewNumber extends StatelessWidget {
//   const PokemonOverviewNumber({Key key, @required this.item}) : super(key: key);

//   final Map<String, dynamic> item;

//   @override
//   Widget build(BuildContext context) {
//     return Badge(
//         toAnimate: true,
//         badgeColor: Colors.red,
//         badgeContent: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             item["id"].toString(),
//             style: TextStyle(
//                 color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//         ));
//   }
// }
