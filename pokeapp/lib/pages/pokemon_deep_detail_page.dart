import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/providers/pokemons.dart';
import 'package:pokeapp/utils.dart';
import 'package:pokeapp/widgets/pokemon_details_item_circle.dart';
import 'package:provider/provider.dart';
import 'package:strcolor/strcolor.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PokemonDeepDetailPage extends StatefulWidget {
  final int index;

  PokemonDeepDetailPage(this.index);

  @override
  _PokemonDeepDetailPageState createState() =>
      _PokemonDeepDetailPageState(this.index);
}

class _PokemonDeepDetailPageState extends State<PokemonDeepDetailPage> {
  int index;
  Pokemon item;

  _PokemonDeepDetailPageState(this.index);

  onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      this.index = index;
    });
  }

  setCenterPokemon(context, index) {
    List<Pokemon> items = Provider.of<Pokemons>(context).items;
    setState(() {
      item = items[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Pokemon> items = Provider.of<Pokemons>(context).items;

    if (items.isEmpty) {
      return CircularProgressIndicator(
        backgroundColor: Colors.red,
      );
    }

    setCenterPokemon(context, this.index);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            background(),
            headerImage(),
            headerBar(),
            aboutDescription(),
            backButton(),
          ],
        ));
  }

  background() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://cutewallpaper.org/21/pokemon-landscape-background/Beautiful-Pokemon-Background-iPad-Case-and-Skin.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  headerImage() {
    List<Color> colors = getHeaderBackgroundColors();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.transparent,
        elevation: 4,
        child: Container(
          height: heightSize(0.50, context),
          decoration: BoxDecoration(
            gradient: SweepGradient(
              // colors: [Colors.white60, Colors.red, Colors.black26, Colors.green, Colors.blue],
              colors: colors,
            ),
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: Colors.transparent,
              style: BorderStyle.solid,
            ),
            image: DecorationImage(
              image: NetworkImage(item.getImageCover()),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }

  List<Color> getHeaderBackgroundColors() {
    var colorsName = item.getTypesColor();
    List<Color> colors = [];
    for (String color in colorsName) {
      colors.add(color.color().withOpacity(0.5));
    }
    return colors;
  }

  headerBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 12),
      child: Container(
        height: heightSize(0.50, context),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Card(
            elevation: 16,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  item.getName().toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    fontFamily: "Anton",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8, bottom: 10),
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  aboutDescription() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 22,
          color: Colors.black38,
          child: Container(
            width: double.infinity,
            height: heightSize(0.45, context),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "About",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.getDescription(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 8,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  backButton() {
    return Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.black12,
            ),
            child: InkWell(
                onTap: () {
                  print("BACK BUTTON");
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 22,
                  ),
                )),
          ),
        ),
      );   
  }
}
