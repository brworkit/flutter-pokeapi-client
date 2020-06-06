import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/widgets/pokemon_details_background.dart';
import 'package:pokeapp/widgets/pokemon_overview_types_badges.dart';
import 'package:strcolor/strcolor.dart';

class PokemonDetailsItemCircle extends StatelessWidget {
  const PokemonDetailsItemCircle({Key key, @required this.item})
      : super(key: key);

  final Pokemon item;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * 0.5;
    List<Color> colors = [];
    item.getTypesColor().forEach((element) {
      colors.add(element.color());
    });
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
    return Card(
      elevation: 2,
      color: colors[0].withOpacity(0.1),
      shadowColor: colors[0],
      // color: colors[0].withOpacity(0.2),
      // color: Colors.white,
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // PokemonOverviewTypesBadges(item: item, mainAxisAlignment: MainAxisAlignment.center,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    item.getName().toUpperCase(),
                    style: TextStyle(
                        fontFamily: "Anton",
                        fontSize: 32,
                        color: Colors.black54),
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
          // PokemonOverviewTypesBadges(item: item, mainAxisAlignment: MainAxisAlignment.center,),
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
          Divider(
            height: 20,
          ),
          PokemonOverviewTypesBadges(
            item: item,
            mainAxisAlignment: MainAxisAlignment.center,
            fontSize: 14,
            width: 70.0,
          ),
        ],
      ),
    );
  }
}
