import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:strcolor/strcolor.dart';

class PokemonOverviewBackground extends StatelessWidget {
  const PokemonOverviewBackground({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Pokemon item;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      item.getIcon(),
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }

        return Center(
          child: CircularProgressIndicator(
            backgroundColor: item.getMainTypeColor().color(),
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes
                : null,
          ),
        );
      },
    );
  }
}
