import 'package:flutter/cupertino.dart';
import 'package:pokeapp/models/pokemon.dart';

class Pokemons with ChangeNotifier {
  List<Pokemon> _items = [];

  List<Pokemon> get items {
    return [..._items];
  }

  void addProduct(Pokemon value) {
    _items.add(value);
    notifyListeners();
  }
}
