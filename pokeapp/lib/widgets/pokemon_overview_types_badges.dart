import 'package:flutter/material.dart';
import 'package:pokeapp/extensions/multi_badges.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:strcolor/strcolor.dart';

class PokemonOverviewTypesBadges extends StatelessWidget {
  

  const PokemonOverviewTypesBadges({Key key, @required this.item, this.mainAxisAlignment=MainAxisAlignment.spaceBetween, this.fontSize=12, this.width = 50.0})
      : super(key: key);

  final Pokemon item;
  final mainAxisAlignment;
  final double fontSize;
  final width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: _createChildren(item.getTypes()),
    );
  }

  List<Widget> _createChildren(List<dynamic> items) {
    return List<Widget>.generate(items.length, (int index) {
      var itemType = items[index];
      var colorHex = itemType["color"]["hex"].toString();
      Color backgroundColor = colorHex.color().withOpacity(0.6);

      return Container(
        alignment: Alignment.topLeft,
        child: HexaRectangleBadge(
          width: width,
          child: Text(
            itemType["name"],
            style: TextStyle(
                color: backgroundColor.contrast(),
                fontSize: fontSize,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: backgroundColor,
        ),
      );
    });
  }
}
