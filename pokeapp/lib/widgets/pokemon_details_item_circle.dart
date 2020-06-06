import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/widgets/details_background_image.dart';
import 'package:pokeapp/widgets/badges_line.dart';
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
                      StatsHolder(
                        title: item.getOrder(),
                        subtitle: "ORDER",
                      ),
                      StatsHolder(
                        title: item.getBaseExperience(),
                        subtitle: "BASE EXP",
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
                            colors: colors,
                          )),
                      child: PokemonDetailsBackground(
                        item: item,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      StatsHolder(
                        title: item.getWeight(),
                        subtitle: "WEIGHT",
                      ),
                      StatsHolder(
                        title: item.getHeight(),
                        subtitle: "HEIGHT",
                      ),
                    ],
                  ),
                  Divider(
                    height: 10,
                  ),
                  BadgesLine(
                    item: item,
                    mainAxisAlignment: MainAxisAlignment.center,
                    fontSize: 12,
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

class StatsHolder extends StatelessWidget {
  const StatsHolder(
      {Key key,
      @required this.title,
      this.titleFontSize = 18.0,
      this.titleTextColor,
      @required this.subtitle,
      this.subtitleFontSize = 14.0,
      this.subtitleTextColor})
      : super(key: key);

  final title;
  final subtitle;
  final Color titleTextColor;
  final Color subtitleTextColor;
  final titleFontSize;
  final subtitleFontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontFamily: "Anton",
            fontSize: titleFontSize,
            color: this.titleTextColor != null
                ? this.titleTextColor
                : Colors.grey[600],
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: subtitleFontSize,
            color: this.subtitleTextColor != null
                ? this.subtitleTextColor
                : Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
