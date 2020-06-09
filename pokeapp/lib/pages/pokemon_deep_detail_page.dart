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

class _PokemonDeepDetailPageState extends State<PokemonDeepDetailPage>
    with SingleTickerProviderStateMixin {
  int index;
  Pokemon item;
  TabController _tabController;

  _PokemonDeepDetailPageState(this.index);

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
  }

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
          favoriteIcon(),
          createTabs(),
        ],
      ),
    );
  }

  background() {
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
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: <Widget>[
            //     Text(
            //       item.getName().toUpperCase(),
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 36,
            //         fontFamily: "Anton",
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(right: 8, bottom: 10),
            //       child: Icon(
            //         Icons.star,
            //         color: Colors.white,
            //         size: 60,
            //       ),
            //     ),
            //   ],
            // ),
          ),
        ),
      ),
    );
  }

  aboutDescription() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        elevation: 4,
        color: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Container(
          height: heightSize(0.50, context),
          child: Column(
            children: <Widget>[
              createName(),
              SizedBox(
                height: 10,
              ),
              // createDescription(),
            ],
          ),
        ),
      ),
    );
  }

  createAbout() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Text(
            item.getDescription(),
            overflow: TextOverflow.ellipsis,
            maxLines: 9,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  createStats() {
    var statsName = "HP";
    var statsValue = "18";
    var statsRelativeValue = 0.7;

    
    return Container(
      padding: EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[
          StatsItem(statsName: "HP", statsValue: "30", statsRelativeValue: 0.4),
          StatsItem(statsName: "Attack", statsValue: "35", statsRelativeValue: 0.7),
          StatsItem(statsName: "Defense", statsValue: "56", statsRelativeValue: 0.4),
          StatsItem(statsName: "Sp.Atk", statsValue: "94", statsRelativeValue: 0.55),
          StatsItem(statsName: "Sp. Def", statsValue: "33", statsRelativeValue: 0.8),
          StatsItem(statsName: "Speed", statsValue: "25", statsRelativeValue: 0.2),
        ],
      ),
    );
  }

  createEvolutions() {
    return Container(
      child: Text(
        item.getDescription(),
        overflow: TextOverflow.ellipsis,
        maxLines: 9,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 18,
        ),
      ),
    );
  }

  createMoves() {
    return Container(
      child: Text(
        item.getDescription(),
        overflow: TextOverflow.ellipsis,
        maxLines: 9,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 18,
        ),
      ),
    );
  }

  createName() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          item.getName().toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 36,
            fontFamily: "Anton",
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

  favoriteIcon() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(right: 50, bottom: 16),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 36,
        ),
      ),
    );
  }

  createTabs() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: heightSize(0.40, context),
          child: Card(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            child: Expanded(
              child: DefaultTabController(
                length: 4,
                child: Scaffold(
                  appBar: TabBar(
                    indicatorColor: Colors.red,
                    labelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: "About",
                      ),
                      Tab(
                        text: "Stats",
                      ),
                      Tab(
                        text: "Evolution",
                      ),
                      Tab(
                        text: "Moves",
                      ),
                      // Tab(text:"About", icon: Icon(Icons.directions_car)),
                      // Tab(icon: Icon(Icons.directions_transit)),
                      // Tab(icon: Icon(Icons.directions_bike)),
                    ],
                  ),
                  body: TabBarView(
                    children: [
                      createAbout(),
                      createStats(),
                      createEvolutions(),
                      createMoves(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StatsItem extends StatelessWidget {
  const StatsItem({
    Key key,
    @required this.statsName,
    @required this.statsValue,
    @required this.statsRelativeValue,
  }) : super(key: key);

  final String statsName;
  final String statsValue;
  final double statsRelativeValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: widthSize(0.2, context),
          child: Text(
            statsName,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          width: widthSize(0.2, context),
          child: Text(
            statsValue,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          width: widthSize(0.5, context),
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.green,
            ),
            value: statsRelativeValue,
          ),
        ),
      ],
    );
  }
} 
