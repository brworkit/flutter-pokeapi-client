import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:strcolor/strcolor.dart';

class PokemonOverviewTypesBadges extends StatelessWidget {
  const PokemonOverviewTypesBadges({Key key, @required this.item})
      : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Row(      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _createChildren(item["types"]),
    );
  }

  List<Widget> _createChildren(List<Map<String, dynamic>> itemTypes) {
    return List<Widget>.generate(itemTypes.length, (int index) {

      var itemType = itemTypes[index];
      var colorHex = itemType["color"]["hex"].toString();
      Color backgroundColor = colorHex.color().withOpacity(0.6);
      
      return Container(
        alignment: Alignment.topLeft,
        child: HexaRectangleBadge(
          child: Text(
            itemType["name"],
            style: TextStyle(
                color: backgroundColor.contrast(),
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: backgroundColor,
        ),
      );
    });
  }
}

class HexaRectangleBadge extends StatelessWidget {
  const HexaRectangleBadge({
    Key key,
    @required this.backgroundColor,
    @required this.child,
  }) : super(key: key);

  final Color backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            width: 50,
            height: 20,
            color: backgroundColor,
            child: Center(
              child: child,
            ),
          ),
        ));
  }
}
