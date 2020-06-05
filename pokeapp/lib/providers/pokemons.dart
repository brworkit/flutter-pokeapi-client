import 'package:flutter/cupertino.dart';
import 'package:pokeapp/api/api.dart';
import 'package:pokeapp/data.dart';
import 'package:pokeapp/models/pokemon.dart';

class Pokemons with ChangeNotifier {
  List<Pokemon> _items = [];

  Pokemons() {
    // const response = Api.instance.getAllPokemons();

    // for (var item in response) {
    //   _items.add(Pokemon(item: item));
    // }

    // for (var item in POKEMON_DATA) {
    //   _items.add(Pokemon(item: item));
    // }
    downloadData();
  }

  Future<void> downloadData() async {
    List<Map<String, dynamic>> response = await Api.instance.getAllPokemons();
    print("response: ${response}");
    
    for (var item in response) {
      _items.add(Pokemon(item: item));
    }

  }

  List<Pokemon> get items {
    return [..._items];
  }

  void addProduct(Map<String, dynamic> item) {
    _items.add(Pokemon(item: item));
    notifyListeners();
  }
}
