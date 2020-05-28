import 'package:flutter/material.dart';
import 'package:pokeapp/pages/pokemons_overview_page.dart';


class RootPage extends StatelessWidget {
  const RootPage({
    Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PokemonOverviewPage();
  }
}
