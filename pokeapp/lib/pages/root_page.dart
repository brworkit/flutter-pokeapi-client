import 'package:flutter/material.dart';
import 'package:pokeapp/pages/pokemons_overview_page.dart';
import 'package:pokeapp/widgets/app_bar.dart';

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
      appBar: CustomAppBar(),
      body: PokemonOverviewPage(items)      
    );
  }
}

// class CustomAppBar extends AppBar {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar();
//   }
// }