import 'package:flutter/material.dart';
import 'package:pokeapp/pages/pokemons_overview_page.dart';
import 'package:pokeapp/widgets/custom_sliver_bar.dart';

class RootPage extends StatelessWidget {
  const RootPage({
    Key key,
    @required this.items,
  }) : super(key: key);

  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(),
          PokemonOverviewPage(items),
        ],
      ),
    );
  }
}