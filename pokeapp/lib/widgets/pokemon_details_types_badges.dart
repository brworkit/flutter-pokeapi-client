import 'package:flutter/material.dart';
import 'package:pokeapp/extensions/multi_badges.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:strcolor/strcolor.dart';

class PokemonDetailsTypesBadges extends StatelessWidget {
  const PokemonDetailsTypesBadges({Key key, @required this.item}) : super(key: key);

  final Pokemon item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _createChildren(item.getTypes()),
    );
  }

  List<Widget> _createChildren(List<Map<String, dynamic>> items) {
    return List<Widget>.generate(items.length, (int index) {

      var itemType = items[index];
      var colorHex = itemType["color"]["hex"].toString();
      Color backgroundColor = colorHex.color().withOpacity(0.6);
      
      return Container(
        alignment: Alignment.topLeft,
        child: HexaRectangleBadge(
          width: 80.0,
          height: 30.0,
          child: Text(
            itemType["name"],
            style: TextStyle(
                color: backgroundColor.contrast(),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: backgroundColor,
        ),
      );
    });
  }
}
