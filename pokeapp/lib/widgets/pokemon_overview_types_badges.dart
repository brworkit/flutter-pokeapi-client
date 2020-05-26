import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:strcolor/strcolor.dart';

class PokemonOverviewTypesBadges extends StatelessWidget {
  const PokemonOverviewTypesBadges({Key key, @required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _createChildren(item["types"].reversed.toList()),
    );
  }

  List<Widget> _createChildren(List<Map<String, dynamic>> itemTypes) {
    return List<Widget>.generate(itemTypes.length, (int index) {
      var itemType = itemTypes[index];
      Color badgeColor = itemType["color"]["hex"].toString().color();
      return Container(
        alignment: Alignment.topRight,
        child: Badge(
            elevation: 5,
            shape: BadgeShape.square,
            badgeColor: badgeColor,
            badgeContent: Text(
              itemType["name"],
              style: TextStyle(
                  color: badgeColor.contrast(),
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            )),
      );
    });
  }
}
