import 'package:flutter/material.dart';
import 'package:pokeapp/pages/pokemons_overview_page.dart';


class RootPage extends StatelessWidget {
  const RootPage({
    Key key,
    @required this.items,
  }) : super(key: key);

  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return PokemonOverviewPage(items);
  }
}
