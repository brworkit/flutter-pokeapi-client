import 'package:flutter/foundation.dart';

class Pokemon {
  
  const Pokemon({@required this.item});

  final Map<String, dynamic> item;

  String getId() {
    return item["id"];    
  }

  String getName() {
    return item["name"];    
  }

  String getOrder() {
    return item["order"];    
  }

  String getWight() {
    return item["weight"];    
  }

  String getHeight() {
    return item["height"];    
  }

  String getBaseExperience() {
    return item["base_experience"];    
  }

  String getHabilities() {
    return item["abilities"];    
  }

  String getIcon() {
    return item["image"];    
  }

  String getImageCover() {
    return item["imageCover"];    
  }

  List<String> getAlbumImages() {
    return [];    
  }

  List<Map<String, dynamic>> getTypes() {
    return item["types"];
  }

  List<Map<String, dynamic>> mainType() {
    return item["types"];
  }

  List<Map<String, dynamic>> getTypesColor() {
    return item["types"];
  } 

  List<Map<String, dynamic>> getMainTypeColor() {
    return item["types"];
  }
}
