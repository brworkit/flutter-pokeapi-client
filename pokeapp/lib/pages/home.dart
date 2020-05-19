import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  final List<Map<String, dynamic>> items = [
    {
      "order": 1,
      "name": 'Bulbasaur',
      "types": [
        {"type": 'Grass', "color": Colors.green},
        {"type": 'Posion', "color": Colors.purple}
      ],
      "color": Colors.green,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png'
    },
    {
      "order": 2,
      "name": 'Ivysaur',
      "types": [
        {"type": 'Grass', "color": Colors.green},
        {"type": 'Posion', "color": Colors.purple}
      ],
      "color": Colors.green,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png'
    },
    {
      "order": 3,
      "name": 'Venusaur',
      "types": [
        {"type": 'Grass', "color": Colors.green},
        {"type": 'Posion', "color": Colors.purple}
      ],
      "color": Colors.green,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png'
    },
    {
      "order": 4,
      "name": 'Charmander',
      "types": [
        {"type": 'Fire', "color": Colors.orange}
      ],
      "color": Colors.orange,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png'
    },
    {
      "order": 5,
      "name": 'Charmelleon',
      "types": [
        {"type": 'Fire', "color": Colors.orange}
      ],
      "color": Colors.orange,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png'
    },
    {
      "order": 6,
      "name": 'Charizard',
      "types": [
        {"type": 'Fire', "color": Colors.orange},
        {"type": 'Flying', "color": Colors.grey}
      ],
      "color": Colors.orange,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png'
    },
    {
      "order": 7,
      "name": 'Squirtle',
      "types": [
        {"type": 'Water', "color": Colors.blue}
      ],
      "color": Colors.blue,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png'
    },
    {
      "order": 8,
      "name": 'Wartortle',
      "types": [
        {"type": 'Water', "color": Colors.blue}
      ],
      "color": Colors.blue,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png'
    },
    {
      "order": 9,
      "name": 'Blastoise',
      "types": [
        {"type": 'Water', "color": Colors.blue}
      ],
      "color": Colors.blue,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png'
    },
    {
      "order": 10,
      "name": 'Caterpie',
      "types": [
        {"type": 'Bug', "color": Colors.greenAccent}
      ],
      "color": Colors.greenAccent,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png'
    },
    {
      "order": 11,
      "name": 'Metapod',
      "types": [
        {"type": 'Bug', "color": Colors.greenAccent}
      ],
      "color": Colors.greenAccent,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png'
    },
    {
      "order": 12,
      "name": 'Butterfree',
      "types": [
        {"type": 'Bug', "color": Colors.greenAccent},
        {"type": 'Flying', "color": Colors.grey}
      ],
      "color": Colors.greenAccent,
      "image":
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.red,
            title: Row(
              children: <Widget>[
                Icon(Icons.ac_unit),
                SizedBox(
                  width: 2,
                ),
                Text("Pokémon"),
              ],
            ),
            actions: <Widget>[
              Icon(Icons.search),
              SizedBox(
                width: 15,
              ),
            ],
            floating: true,
            snap: true,
          ),
          PokemonListView(items)
        ],
      ),
    );
  }
}

class PokemonListView extends StatelessWidget {
  const PokemonListView(this.items) : super();

  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var item = this.items[index];
          var types = createTypesBadges(item);
          return Card(
              child: ListTile(
            leading: Image.network(
              item["image"],
              fit: BoxFit.cover,
            ),
            title: Text(item["name"],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            
            subtitle: Container(
              child: types,
            ),
            
            trailing: Badge(
                badgeColor: item["color"],
                badgeContent: Text(
                  item["order"].toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
          ));
        },
        // Builds 1000 ListTiles
        childCount: items.length,
      ),
    );
  }

  List<Widget> _createChildren(List<Map<String, dynamic>> itemTypes) {
      return List<Widget>.generate(itemTypes.length, (int index) {
        var itemType = itemTypes[index];

        return Badge(
            elevation: 2,
            shape: BadgeShape.square,
            badgeColor: itemType["color"],
            badgeContent: Text(
              itemType["type"],
              style: TextStyle(color: Colors.white, fontSize: 14),
            ));
      });
    }

  createTypesBadges(Map<String, dynamic> item) {    
    return Row(
      children: _createChildren(item["types"]),
    );
  }
}
