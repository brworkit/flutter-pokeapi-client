import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:pokeapp/providers/pokemons.dart';
import 'package:pokeapp/utils.dart';
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
    // List<String> images = [
    //   'https://cutewallpaper.org/21/pokemon-landscape-background/Beautiful-Pokemon-Background-iPad-Case-and-Skin.jpg',
    //   'https://preview.redd.it/nwhdf1xlmyq31.jpg?auto=webp&s=538f6760f596c2577506e170c103376823080651',
    //   'https://cdnb.artstation.com/p/assets/images/images/019/647/779/large/david-oswald-photo-jul-29-2-22-51-pm.jpg?1564424705',
    //   'https://cdn.wallpapersafari.com/53/2/dtheXO.jpg',
    //   'https://static.fandomspot.com/images/08/2071/00-featured-route-anime-pokemon-ostgame.jpg',
    //   'https://archive-media-0.nyafuu.org/w/image/1465/76/1465765230660.jpg',
    //   'https://media.pocketgamer.com/artwork/ra-82605-1585325135/pocketgamer-zoom-backgrounds-013.jpg'
    // ];

    // var image = (images..shuffle()).first;

    List<Color> colors = getHeaderBackgroundColors();

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: colors,
        ),
        // image: DecorationImage(
        //   image: NetworkImage(
        //       image
        //       ),
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }

  headerImage() {
    // List<Color> colors = getHeaderBackgroundColors();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.transparent,
        elevation: 4,
        child: Container(
          height: heightSize(0.50, context),
          decoration: BoxDecoration(
            // gradient: SweepGradient(
            //   // colors: [Colors.white60, Colors.red, Colors.black26, Colors.green, Colors.blue],
            //   colors: colors,
            // ),
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
