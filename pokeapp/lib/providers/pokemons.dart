import 'package:flutter/cupertino.dart';
import 'package:pokeapp/data.dart';
import 'package:pokeapp/models/pokemon.dart';

class Pokemons with ChangeNotifier {
  List<Pokemon> _items = [];

  Pokemons() {
    for (var item in POKEMON_DATA) {
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
