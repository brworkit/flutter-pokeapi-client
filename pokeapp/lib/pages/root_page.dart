import 'package:flutter/material.dart';
import 'package:pokeapp/pages/pokemon_deep_detail_page.dart';
import 'package:pokeapp/pages/pokemons_overview_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key key}) : super(key: key);


  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   print("[] didChangeAppLifecycleState");

  //   switch(state){
  //     case AppLifecycleState.resumed:
  //       print("app in resumed");
  //       break;
  //     case AppLifecycleState.inactive:
  //       print("app in inactive");
  //       break;
  //     case AppLifecycleState.paused:
  //       print("app in paused");
  //       break;
  //     case AppLifecycleState.detached:
  //       print("app in detached");
  //       break;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // return PokemonOverviewPage();
    return PokemonDeepDetailPage(8);
  }
}
