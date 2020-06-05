import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:pokeapp/data.dart';

class Api {
  Api._privateConstructor();
  static final Api instance = Api._privateConstructor();

  Future<List<Map<String, dynamic>>> getAllPokemons() async {
    print("API getAllPokemons");

    // final response = await http.get('https://futvarzea-api-server.herokuapp.com/futvarzea/teams',
    //    headers: {'Content-Type': 'application/json'},
    // );

    // print("response: " + response.toString());
    // print("response statusCode: " + response.statusCode.toString());
    // return List.castFrom(json.decode(response.body)["result"]);
    return POKEMON_DATA;
  }
}
