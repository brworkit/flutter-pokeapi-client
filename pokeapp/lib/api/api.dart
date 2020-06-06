import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class Api {
  Api._privateConstructor();
  static final Api instance = Api._privateConstructor();

  Future<List<Map<String, dynamic>>> getAllPokemons() async {
    final response = await http.get(
      'https://pokebattle-api-hml.herokuapp.com/pokebattle/v1/pokemons?from=1&to=151',
      headers: {'Content-Type': 'application/json'},
    );
    return List.castFrom(json.decode(response.body)["result"]);
  }
}
