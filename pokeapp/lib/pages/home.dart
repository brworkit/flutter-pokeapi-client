import 'package:flutter/material.dart';
import 'package:pokeapp/pages/pokemon_list_view.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  final List<Map<String, dynamic>> items = [
    {
      "id": 2,
      "order": 2,
      "name": "ivysaur",
      "weight": 130,
      "height": 10,
      "base_experience": 142,
      "types": [
        {"name": "poison", "color": "purple"},
        {"name": "grass", "color": "green"}
      ],
      "color": "blue",
      "image":
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return RootPage(items: items);
  }
}

class RootPage extends StatelessWidget {
  const RootPage({
    Key key,
    @required this.items,
  }) : super(key: key);

  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: <Widget>[CustomSliverAppBar(), PokemonListView(items)],
      ),
    );
  }
}

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.red,
      floating: true,
      snap: true,
      title: AppBarTitle(),
      actions: createAppBarActions(),
    );
  }

  List<Widget> createAppBarActions() {
    return <Widget>[
      Icon(Icons.search),
      SizedBox(
        width: 15,
      ),
    ];
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("Pokémon"),
      ],
    );
  }
}
