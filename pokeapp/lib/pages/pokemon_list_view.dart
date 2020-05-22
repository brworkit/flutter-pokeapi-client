import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:strcolor/strcolor.dart';
// import 'package:pokeapp/extensions/string_to_color.dart';

class PokemonListView extends StatelessWidget {
  const PokemonListView(this.items) : super();

  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var item = this.items[index];
          return PokemonPreview(item: item);
        },
        // Builds 1000 ListTiles
        childCount: items.length,
      ),
    );
  }
}

class PokemonTypesView extends StatelessWidget {
  const PokemonTypesView({Key key, @required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _createChildren(item["types"].reversed.toList()),
    );
  }

  List<Widget> _createChildren(List<Map<String, dynamic>> itemTypes) {

    return List<Widget>.generate(itemTypes.length, (int index) {
      var itemType = itemTypes[index];
      Color badgeColor = itemType["color"]["hex"].toString().color();
      
      return Badge(
          elevation: 2,
          shape: BadgeShape.square,
          badgeColor: badgeColor,
          badgeContent: Text(
            itemType["name"],
            style: TextStyle(color: badgeColor.contrast(), fontSize: 14, fontWeight: FontWeight.bold),
          ));
    });
  }
}

class PokemonPreview extends StatelessWidget {
  const PokemonPreview({Key key, @required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {

    return Card(
        child: ListTile(
      leading: Image.network(
        item["image"],
        fit: BoxFit.fill,
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(item["name"].toUpperCase(),
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
      subtitle: Container(
        child: PokemonTypesView(item: item),
      ),
      trailing: PokemonNumberView(item: item),
    ));
  }
}

class PokemonNumberView extends StatelessWidget {
  const PokemonNumberView({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {   
    // var types = item["types"].reversed.toList();
    // Color badgeColor = types[0]["color"]["hex"].toString().color();

    return Badge(        
        toAnimate: true,
        badgeColor: Colors.red,
        badgeContent: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            item["id"].toString(),
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
