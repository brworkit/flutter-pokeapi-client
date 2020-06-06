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
    var textColor = Colors.grey[600];
    var cardColor = Colors.grey[200];

    return Center(
      child: Card(
        elevation: 10,                
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: cardColor,
        shadowColor: colors[0],
        child: Center(
          child: Container(                     
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  
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
                                color: textColor),
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
                                color: textColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "ORDER",
                            style: TextStyle(fontSize: 14, color: textColor),
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
                                color: textColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "BASE EXP",
                            style: TextStyle(fontSize: 14, color: textColor),
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
                                color: textColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "WEIGHT",
                            style: TextStyle(fontSize: 14, color: textColor),
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
                                color: textColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "HEIGHT",
                            style: TextStyle(fontSize: 14, color: textColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 10,
                  ),
                  PokemonOverviewTypesBadges(
                    item: item,                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    fontSize: 12,
                    // fontFamily: "Anton",
                    // textColor: Colors.grey[300],
                    textColor: Colors.grey[100],
                    badgeWidth: 70.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
