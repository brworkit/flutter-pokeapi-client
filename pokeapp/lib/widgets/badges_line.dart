import 'package:flutter/material.dart';
import 'package:pokeapp/extensions/multi_badges.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:strcolor/strcolor.dart';

class PokemonOverviewTypesBadges extends StatelessWidget {
  
  const PokemonOverviewTypesBadges(
      {Key key,
      @required this.item,      
      this.fontSize = 10,
      this.badgeWidth = 50.0,
      this.textColor,
      this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
      this.fontFamily = "Lato"})
      : super(key: key);

  final Pokemon item;  
  final double fontSize;
  final double badgeWidth;
  final Color textColor;
  final fontFamily;
  final mainAxisAlignment;
  
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
      Color backgroundColor = colorHex.color().withOpacity(1.0);
      return Container(
        alignment: Alignment.topLeft,
        child: HexaRectangleBadge(
          width: badgeWidth,
          child: Text(
            itemType["name"].toString().toUpperCase(),
            style: TextStyle(
                fontFamily: fontFamily,                
                color: Colors.grey[100],
                fontSize: fontSize,
                fontWeight: FontWeight.w900),
          ),
          backgroundColor: backgroundColor,
        ),
      );
    });
  }
}
