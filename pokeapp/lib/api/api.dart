import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:pokeapp/data.dart';

class Api {
  Api._privateConstructor();
  static final Api instance = Api._privateConstructor();

  Future<List<Map<String, dynamic>>> getAllPokemons() async {
    print("API getAllPokemons");

    final response = await http.get('https://pokebattle-api-hml.herokuapp.com/pokebattle/v1/pokemons?from=1&to=150',
       headers: {'Content-Type': 'application/json'},
    );

    print("response: " + response.toString());
    print("response statusCode: " + response.statusCode.toString());
    List<Map<String, dynamic>> res = List.castFrom(json.decode(response.body)["result"]);
    return res;
    // return List.castFrom(json.decode(response.body)["result"]);
    // return POKEMON_DATA;
  }
}
