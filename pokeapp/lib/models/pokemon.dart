import 'package:flutter/foundation.dart';

class Pokemon {
  const Pokemon({@required this.item});

  final Map<String, dynamic> item;

  String getId() {
    return item["id"].toString();
  }

  String getName() {
    return item["name"];
  }

  String getOrder() {
    return item["order"].toString();
  }

  String getWeight() {
    return item["weight"].toString();
  }

  String getHeight() {
    return item["height"].toString();
  }

  String getBaseExperience() {
    return item["base_experience"].toString();
  }

  String getHabilities() {
    return item["abilities"];
  }

  String getIcon() {
    // return item["image"];
    return item["imageCover"].toString().replaceFirst("full", "detail");
  }

  String getImageCover() {
    return item["imageCover"];
  }

  List<String> getAlbumImages() {
    return [];
  }

  List<dynamic> getTypes() {
    return item["types"];
  }

  List<dynamic> mainType() {
    return item["types"][0];
  }

  List<String> getTypesColor() {
    List<String> result = [];
    for (var item in item["types"]) {
      result.add(item["color"]["hex"]);
    }

    if (result.length == 1) {
      result.add("white");
    }

    return result;
  }

  List<String> getTypesName() {
    List<String> result = [];
    for (var item in item["types"]) {
      result.add(item["name"]);
    }
    return result;
  }

  String getMainTypeColor() {
    return item["types"][0]["color"]["hex"];
  }

  String getDescription() {
    return """This is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum""";
  }
}
