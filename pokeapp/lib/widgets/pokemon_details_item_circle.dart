import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/pages/pokemon_detail_page.dart';
import 'package:pokeapp/widgets/pokemon_details_background.dart';
import 'package:pokeapp/widgets/pokemon_details_types_badges.dart';
import 'package:pokeapp/widgets/pokemon_overview_number.dart';
import 'package:pokeapp/widgets/pokemon_overview_title.dart';
import 'package:pokeapp/widgets/pokemon_overview_icon.dart';
import 'package:strcolor/strcolor.dart';

class PokemonDetailsItemCircle extends StatelessWidget {
  const PokemonDetailsItemCircle({Key key, @required this.item})
      : super(key: key);

  final Pokemon item;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * 0.5;
    // List<Color> colors = item.getTypesColor().reduce((value, element) => return value.toString().color())
    List<Color> colors = [];

    item.getTypesColor().forEach((element) {
      colors.add(element.color());
    });

    if (colors.length == 1) {
      colors.add((Colors.white));
    }

    return CarrouselHeader(item: item, width: width, colors: colors);
  }
}

class CarrouselHeader extends StatelessWidget {
  const CarrouselHeader({
    Key key,
    @required this.item,
    @required this.width,
    @required this.colors,
  }) : super(key: key);

  final Pokemon item;
  final double width;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  item.getName().toUpperCase(),
                  style: TextStyle(
                      fontFamily: "Anton", fontSize: 32, color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  item.getOrder(),
                  style: TextStyle(
                      fontFamily: "Anton",
                      fontSize: 18,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "ORDER",
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  item.getBaseExperience(),
                  style: TextStyle(
                      fontFamily: "Anton",
                      fontSize: 18,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "BASE EXP",
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
              ],
            ),
          ],
        ),
        Container(
            width: width,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: colors)),
            child: PokemonDetailsBackground(item: item)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  item.getWight(),
                  style: TextStyle(
                      fontFamily: "Anton",
                      fontSize: 18,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "WEIGHT",
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  item.getHeight(),
                  style: TextStyle(
                      fontFamily: "Anton",
                      fontSize: 18,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "HEIGHT",
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
