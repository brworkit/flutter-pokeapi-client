import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

const Map<String, Color> colors = {
  "green": Colors.green
};

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
              fit: BoxFit.fill,
            ),
            title: Text(item["name"].toUpperCase(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            subtitle: Container(
              child: types,
            ),
            trailing: Badge(
                badgeColor: translateColor(item["color"]),
                badgeContent: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item["id"].toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
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
          badgeColor: translateColor(itemType["color"]),
          badgeContent: Text(
            itemType["name"],
            style: TextStyle(color: Colors.white, fontSize: 14),
          ));
    });
  }

  translateColor(String color) => colors.containsKey(color) ? colors[color] : Colors.black;

  createTypesBadges(Map<String, dynamic> item) {
    return Row(
      children: _createChildren(item["types"]),
    );
  }
}