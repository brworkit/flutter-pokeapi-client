import 'package:flutter/cupertino.dart';
import 'package:pokeapp/models/pokemon.dart';

class Pokemons with ChangeNotifier {
  // List<Pokemon> _items = []

  List<Map<String, dynamic>> _items = [
  {
    "id": 1,
    "order": 1,
    "name": "bulbasaur",
    "weight": 69,
    "height": 7,
    "base_experience": 64,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "chlorophyll"},
      {"name": "overgrow"}
    ]
  },
  {
    "id": 2,
    "order": 2,
    "name": "ivysaur",
    "weight": 130,
    "height": 10,
    "base_experience": 142,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "chlorophyll"},
      {"name": "overgrow"}
    ]
  },
  {
    "id": 3,
    "order": 3,
    "name": "venusaur",
    "weight": 1000,
    "height": 20,
    "base_experience": 236,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "chlorophyll"},
      {"name": "overgrow"}
    ]
  },
  {
    "id": 4,
    "order": 5,
    "name": "charmander",
    "weight": 85,
    "height": 6,
    "base_experience": 62,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      }
    ],
    "abilities": [
      {"name": "solar-power"},
      {"name": "blaze"}
    ]
  },
  {
    "id": 5,
    "order": 6,
    "name": "charmeleon",
    "weight": 190,
    "height": 11,
    "base_experience": 142,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      }
    ],
    "abilities": [
      {"name": "solar-power"},
      {"name": "blaze"}
    ]
  },
  {
    "id": 6,
    "order": 7,
    "name": "charizard",
    "weight": 905,
    "height": 17,
    "base_experience": 240,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "solar-power"},
      {"name": "blaze"}
    ]
  },
  {
    "id": 7,
    "order": 10,
    "name": "squirtle",
    "weight": 90,
    "height": 5,
    "base_experience": 63,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "rain-dish"},
      {"name": "torrent"}
    ]
  },
  {
    "id": 8,
    "order": 11,
    "name": "wartortle",
    "weight": 225,
    "height": 10,
    "base_experience": 142,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/008.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "rain-dish"},
      {"name": "torrent"}
    ]
  },
  {
    "id": 9,
    "order": 12,
    "name": "blastoise",
    "weight": 855,
    "height": 16,
    "base_experience": 239,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "rain-dish"},
      {"name": "torrent"}
    ]
  },
  {
    "id": 10,
    "order": 14,
    "name": "caterpie",
    "weight": 29,
    "height": 3,
    "base_experience": 39,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/010.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      }
    ],
    "abilities": [
      {"name": "run-away"},
      {"name": "shield-dust"}
    ]
  },
  {
    "id": 11,
    "order": 15,
    "name": "metapod",
    "weight": 99,
    "height": 7,
    "base_experience": 72,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/011.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      }
    ],
    "abilities": [
      {"name": "shed-skin"}
    ]
  },
  {
    "id": 12,
    "order": 16,
    "name": "butterfree",
    "weight": 320,
    "height": 11,
    "base_experience": 178,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/012.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "tinted-lens"},
      {"name": "compound-eyes"}
    ]
  },
  {
    "id": 13,
    "order": 17,
    "name": "weedle",
    "weight": 32,
    "height": 3,
    "base_experience": 39,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/13.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/013.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "run-away"},
      {"name": "shield-dust"}
    ]
  },
  {
    "id": 14,
    "order": 18,
    "name": "kakuna",
    "weight": 100,
    "height": 6,
    "base_experience": 72,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/14.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/014.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "shed-skin"}
    ]
  },
  {
    "id": 15,
    "order": 19,
    "name": "beedrill",
    "weight": 295,
    "height": 10,
    "base_experience": 178,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/15.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/015.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "sniper"},
      {"name": "swarm"}
    ]
  },
  {
    "id": 16,
    "order": 21,
    "name": "pidgey",
    "weight": 18,
    "height": 3,
    "base_experience": 50,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/16.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/016.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "big-pecks"},
      {"name": "tangled-feet"},
      {"name": "keen-eye"}
    ]
  },
  {
    "id": 17,
    "order": 22,
    "name": "pidgeotto",
    "weight": 300,
    "height": 11,
    "base_experience": 122,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/17.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/017.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "big-pecks"},
      {"name": "tangled-feet"},
      {"name": "keen-eye"}
    ]
  },
  {
    "id": 18,
    "order": 23,
    "name": "pidgeot",
    "weight": 395,
    "height": 15,
    "base_experience": 216,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/18.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/018.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "big-pecks"},
      {"name": "tangled-feet"},
      {"name": "keen-eye"}
    ]
  },
  {
    "id": 19,
    "order": 25,
    "name": "rattata",
    "weight": 35,
    "height": 3,
    "base_experience": 51,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/19.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/019.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "hustle"},
      {"name": "guts"},
      {"name": "run-away"}
    ]
  },
  {
    "id": 20,
    "order": 27,
    "name": "raticate",
    "weight": 185,
    "height": 7,
    "base_experience": 145,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/20.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/020.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "hustle"},
      {"name": "guts"},
      {"name": "run-away"}
    ]
  },
  {
    "id": 21,
    "order": 30,
    "name": "spearow",
    "weight": 20,
    "height": 3,
    "base_experience": 52,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/21.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/021.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "sniper"},
      {"name": "keen-eye"}
    ]
  },
  {
    "id": 22,
    "order": 31,
    "name": "fearow",
    "weight": 380,
    "height": 12,
    "base_experience": 155,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/22.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/022.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "sniper"},
      {"name": "keen-eye"}
    ]
  },
  {
    "id": 23,
    "order": 32,
    "name": "ekans",
    "weight": 69,
    "height": 20,
    "base_experience": 58,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/23.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/023.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "unnerve"},
      {"name": "shed-skin"},
      {"name": "intimidate"}
    ]
  },
  {
    "id": 24,
    "order": 33,
    "name": "arbok",
    "weight": 650,
    "height": 35,
    "base_experience": 157,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/24.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/024.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "unnerve"},
      {"name": "shed-skin"},
      {"name": "intimidate"}
    ]
  },
  {
    "id": 25,
    "order": 35,
    "name": "pikachu",
    "weight": 60,
    "height": 4,
    "base_experience": 112,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png",
    "types": [
      {
        "name": "electric",
        "color": {"name": "Yellow", "hex": "#ffff00"}
      }
    ],
    "abilities": [
      {"name": "lightning-rod"},
      {"name": "static"}
    ]
  },
  {
    "id": 26,
    "order": 43,
    "name": "raichu",
    "weight": 300,
    "height": 8,
    "base_experience": 218,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/26.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/026.png",
    "types": [
      {
        "name": "electric",
        "color": {"name": "Yellow", "hex": "#ffff00"}
      }
    ],
    "abilities": [
      {"name": "lightning-rod"},
      {"name": "static"}
    ]
  },
  {
    "id": 27,
    "order": 45,
    "name": "sandshrew",
    "weight": 120,
    "height": 6,
    "base_experience": 60,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/27.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/027.png",
    "types": [
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "sand-rush"},
      {"name": "sand-veil"}
    ]
  },
  {
    "id": 28,
    "order": 47,
    "name": "sandslash",
    "weight": 295,
    "height": 10,
    "base_experience": 158,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/28.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/028.png",
    "types": [
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "sand-rush"},
      {"name": "sand-veil"}
    ]
  },
  {
    "id": 29,
    "order": 49,
    "name": "nidoran-f",
    "weight": 70,
    "height": 4,
    "base_experience": 55,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/29.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/029.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "hustle"},
      {"name": "rivalry"},
      {"name": "poison-point"}
    ]
  },
  {
    "id": 30,
    "order": 50,
    "name": "nidorina",
    "weight": 200,
    "height": 8,
    "base_experience": 128,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/30.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/030.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "hustle"},
      {"name": "rivalry"},
      {"name": "poison-point"}
    ]
  },
  {
    "id": 31,
    "order": 51,
    "name": "nidoqueen",
    "weight": 600,
    "height": 13,
    "base_experience": 227,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/31.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/031.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      },
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "sheer-force"},
      {"name": "rivalry"},
      {"name": "poison-point"}
    ]
  },
  {
    "id": 32,
    "order": 52,
    "name": "nidoran-m",
    "weight": 90,
    "height": 5,
    "base_experience": 55,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/32.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/032.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "hustle"},
      {"name": "rivalry"},
      {"name": "poison-point"}
    ]
  },
  {
    "id": 33,
    "order": 53,
    "name": "nidorino",
    "weight": 195,
    "height": 9,
    "base_experience": 128,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/33.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/033.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "hustle"},
      {"name": "rivalry"},
      {"name": "poison-point"}
    ]
  },
  {
    "id": 34,
    "order": 54,
    "name": "nidoking",
    "weight": 620,
    "height": 14,
    "base_experience": 227,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/34.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/034.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      },
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "sheer-force"},
      {"name": "rivalry"},
      {"name": "poison-point"}
    ]
  },
  {
    "id": 35,
    "order": 56,
    "name": "clefairy",
    "weight": 75,
    "height": 6,
    "base_experience": 113,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/35.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/035.png",
    "types": [{
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }],
    "abilities": [
      {"name": "friend-guard"},
      {"name": "magic-guard"},
      {"name": "cute-charm"}
    ]
  },
  {
    "id": 36,
    "order": 57,
    "name": "clefable",
    "weight": 400,
    "height": 13,
    "base_experience": 217,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/36.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/036.png",
    "types": [{
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }],
    "abilities": [
      {"name": "unaware"},
      {"name": "magic-guard"},
      {"name": "cute-charm"}
    ]
  },
  {
    "id": 37,
    "order": 58,
    "name": "vulpix",
    "weight": 99,
    "height": 6,
    "base_experience": 60,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/37.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/037.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      }
    ],
    "abilities": [
      {"name": "drought"},
      {"name": "flash-fire"}
    ]
  },
  {
    "id": 38,
    "order": 60,
    "name": "ninetales",
    "weight": 199,
    "height": 11,
    "base_experience": 177,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/38.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/038.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      }
    ],
    "abilities": [
      {"name": "drought"},
      {"name": "flash-fire"}
    ]
  },
  {
    "id": 39,
    "order": 63,
    "name": "jigglypuff",
    "weight": 55,
    "height": 5,
    "base_experience": 95,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/39.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/039.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "friend-guard"},
      {"name": "competitive"},
      {"name": "cute-charm"}
    ]
  },
  {
    "id": 40,
    "order": 64,
    "name": "wigglytuff",
    "weight": 120,
    "height": 10,
    "base_experience": 196,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/40.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/040.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "frisk"},
      {"name": "competitive"},
      {"name": "cute-charm"}
    ]
  },
  {
    "id": 41,
    "order": 65,
    "name": "zubat",
    "weight": 75,
    "height": 8,
    "base_experience": 49,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/41.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/041.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "infiltrator"},
      {"name": "inner-focus"}
    ]
  },
  {
    "id": 42,
    "order": 66,
    "name": "golbat",
    "weight": 550,
    "height": 16,
    "base_experience": 159,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/42.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/042.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "infiltrator"},
      {"name": "inner-focus"}
    ]
  },
  {
    "id": 43,
    "order": 68,
    "name": "oddish",
    "weight": 54,
    "height": 5,
    "base_experience": 64,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/43.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/043.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "run-away"},
      {"name": "chlorophyll"}
    ]
  },
  {
    "id": 44,
    "order": 69,
    "name": "gloom",
    "weight": 86,
    "height": 8,
    "base_experience": 138,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/44.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/044.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "stench"},
      {"name": "chlorophyll"}
    ]
  },
  {
    "id": 45,
    "order": 70,
    "name": "vileplume",
    "weight": 186,
    "height": 12,
    "base_experience": 221,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/45.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/045.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "effect-spore"},
      {"name": "chlorophyll"}
    ]
  },
  {
    "id": 46,
    "order": 72,
    "name": "paras",
    "weight": 54,
    "height": 3,
    "base_experience": 57,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/046.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      },
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      }
    ],
    "abilities": [
      {"name": "damp"},
      {"name": "dry-skin"},
      {"name": "effect-spore"}
    ]
  },
  {
    "id": 47,
    "order": 73,
    "name": "parasect",
    "weight": 295,
    "height": 10,
    "base_experience": 142,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/47.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/047.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      },
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      }
    ],
    "abilities": [
      {"name": "damp"},
      {"name": "dry-skin"},
      {"name": "effect-spore"}
    ]
  },
  {
    "id": 48,
    "order": 74,
    "name": "venonat",
    "weight": 300,
    "height": 10,
    "base_experience": 61,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/48.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/048.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "run-away"},
      {"name": "tinted-lens"},
      {"name": "compound-eyes"}
    ]
  },
  {
    "id": 49,
    "order": 75,
    "name": "venomoth",
    "weight": 125,
    "height": 15,
    "base_experience": 158,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/49.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/049.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "wonder-skin"},
      {"name": "tinted-lens"},
      {"name": "shield-dust"}
    ]
  },
  {
    "id": 50,
    "order": 76,
    "name": "diglett",
    "weight": 8,
    "height": 2,
    "base_experience": 53,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/50.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/050.png",
    "types": [
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "sand-force"},
      {"name": "arena-trap"},
      {"name": "sand-veil"}
    ]
  },
  {
    "id": 51,
    "order": 78,
    "name": "dugtrio",
    "weight": 333,
    "height": 7,
    "base_experience": 149,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/51.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/051.png",
    "types": [
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "sand-force"},
      {"name": "arena-trap"},
      {"name": "sand-veil"}
    ]
  },
  {
    "id": 52,
    "order": 80,
    "name": "meowth",
    "weight": 42,
    "height": 4,
    "base_experience": 58,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/52.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/052.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "unnerve"},
      {"name": "technician"},
      {"name": "pickup"}
    ]
  },
  {
    "id": 53,
    "order": 82,
    "name": "persian",
    "weight": 320,
    "height": 10,
    "base_experience": 154,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/53.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/053.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "unnerve"},
      {"name": "technician"},
      {"name": "limber"}
    ]
  },
  {
    "id": 54,
    "order": 84,
    "name": "psyduck",
    "weight": 196,
    "height": 8,
    "base_experience": 64,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/54.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/054.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "swift-swim"},
      {"name": "cloud-nine"},
      {"name": "damp"}
    ]
  },
  {
    "id": 55,
    "order": 85,
    "name": "golduck",
    "weight": 766,
    "height": 17,
    "base_experience": 175,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/55.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/055.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "swift-swim"},
      {"name": "cloud-nine"},
      {"name": "damp"}
    ]
  },
  {
    "id": 56,
    "order": 86,
    "name": "mankey",
    "weight": 280,
    "height": 5,
    "base_experience": 61,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/56.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/056.png",
    "types": [
      {
        "name": "fighting",
        "color": {"name": "Maroon", "hex": "#800000"}
      }
    ],
    "abilities": [
      {"name": "defiant"},
      {"name": "anger-point"},
      {"name": "vital-spirit"}
    ]
  },
  {
    "id": 57,
    "order": 87,
    "name": "primeape",
    "weight": 320,
    "height": 10,
    "base_experience": 159,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/57.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/057.png",
    "types": [
      {
        "name": "fighting",
        "color": {"name": "Maroon", "hex": "#800000"}
      }
    ],
    "abilities": [
      {"name": "defiant"},
      {"name": "anger-point"},
      {"name": "vital-spirit"}
    ]
  },
  {
    "id": 58,
    "order": 88,
    "name": "growlithe",
    "weight": 190,
    "height": 7,
    "base_experience": 70,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/58.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/058.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      }
    ],
    "abilities": [
      {"name": "justified"},
      {"name": "flash-fire"},
      {"name": "intimidate"}
    ]
  },
  {
    "id": 59,
    "order": 89,
    "name": "arcanine",
    "weight": 1550,
    "height": 19,
    "base_experience": 194,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/59.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/059.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      }
    ],
    "abilities": [
      {"name": "justified"},
      {"name": "flash-fire"},
      {"name": "intimidate"}
    ]
  },
  {
    "id": 60,
    "order": 90,
    "name": "poliwag",
    "weight": 124,
    "height": 6,
    "base_experience": 60,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/60.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/060.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "swift-swim"},
      {"name": "damp"},
      {"name": "water-absorb"}
    ]
  },
  {
    "id": 61,
    "order": 91,
    "name": "poliwhirl",
    "weight": 200,
    "height": 10,
    "base_experience": 135,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/61.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/061.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "swift-swim"},
      {"name": "damp"},
      {"name": "water-absorb"}
    ]
  },
  {
    "id": 62,
    "order": 92,
    "name": "poliwrath",
    "weight": 540,
    "height": 13,
    "base_experience": 230,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/62.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/062.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      },
      {
        "name": "fighting",
        "color": {"name": "Maroon", "hex": "#800000"}
      }
    ],
    "abilities": [
      {"name": "swift-swim"},
      {"name": "damp"},
      {"name": "water-absorb"}
    ]
  },
  {
    "id": 63,
    "order": 94,
    "name": "abra",
    "weight": 195,
    "height": 9,
    "base_experience": 62,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/63.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/063.png",
    "types": [
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "magic-guard"},
      {"name": "inner-focus"},
      {"name": "synchronize"}
    ]
  },
  {
    "id": 64,
    "order": 95,
    "name": "kadabra",
    "weight": 565,
    "height": 13,
    "base_experience": 140,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/64.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/064.png",
    "types": [
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "magic-guard"},
      {"name": "inner-focus"},
      {"name": "synchronize"}
    ]
  },
  {
    "id": 65,
    "order": 96,
    "name": "alakazam",
    "weight": 480,
    "height": 15,
    "base_experience": 225,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/65.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/065.png",
    "types": [
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "magic-guard"},
      {"name": "inner-focus"},
      {"name": "synchronize"}
    ]
  },
  {
    "id": 66,
    "order": 98,
    "name": "machop",
    "weight": 195,
    "height": 8,
    "base_experience": 61,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/66.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/066.png",
    "types": [
      {
        "name": "fighting",
        "color": {"name": "Maroon", "hex": "#800000"}
      }
    ],
    "abilities": [
      {"name": "steadfast"},
      {"name": "no-guard"},
      {"name": "guts"}
    ]
  },
  {
    "id": 67,
    "order": 99,
    "name": "machoke",
    "weight": 705,
    "height": 15,
    "base_experience": 142,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/67.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/067.png",
    "types": [
      {
        "name": "fighting",
        "color": {"name": "Maroon", "hex": "#800000"}
      }
    ],
    "abilities": [
      {"name": "steadfast"},
      {"name": "no-guard"},
      {"name": "guts"}
    ]
  },
  {
    "id": 68,
    "order": 100,
    "name": "machamp",
    "weight": 1300,
    "height": 16,
    "base_experience": 227,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/68.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/068.png",
    "types": [
      {
        "name": "fighting",
        "color": {"name": "Maroon", "hex": "#800000"}
      }
    ],
    "abilities": [
      {"name": "steadfast"},
      {"name": "no-guard"},
      {"name": "guts"}
    ]
  },
  {
    "id": 69,
    "order": 101,
    "name": "bellsprout",
    "weight": 40,
    "height": 7,
    "base_experience": 60,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/69.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/069.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "gluttony"},
      {"name": "chlorophyll"}
    ]
  },
  {
    "id": 70,
    "order": 102,
    "name": "weepinbell",
    "weight": 64,
    "height": 10,
    "base_experience": 137,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/70.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/070.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "gluttony"},
      {"name": "chlorophyll"}
    ]
  },
  {
    "id": 71,
    "order": 103,
    "name": "victreebel",
    "weight": 155,
    "height": 17,
    "base_experience": 221,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/71.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/071.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "gluttony"},
      {"name": "chlorophyll"}
    ]
  },
  {
    "id": 72,
    "order": 104,
    "name": "tentacool",
    "weight": 455,
    "height": 9,
    "base_experience": 67,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/72.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/072.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "rain-dish"},
      {"name": "liquid-ooze"},
      {"name": "clear-body"}
    ]
  },
  {
    "id": 73,
    "order": 105,
    "name": "tentacruel",
    "weight": 550,
    "height": 16,
    "base_experience": 180,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/73.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/073.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "rain-dish"},
      {"name": "liquid-ooze"},
      {"name": "clear-body"}
    ]
  },
  {
    "id": 74,
    "order": 106,
    "name": "geodude",
    "weight": 200,
    "height": 4,
    "base_experience": 60,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/074.png",
    "types": [
      {
        "name": "rock",
        "color": {"name": "Brown", "hex": "#a52a2a"}
      },
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "sand-veil"},
      {"name": "sturdy"},
      {"name": "rock-head"}
    ]
  },
  {
    "id": 75,
    "order": 108,
    "name": "graveler",
    "weight": 1050,
    "height": 10,
    "base_experience": 137,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/75.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/075.png",
    "types": [
      {
        "name": "rock",
        "color": {"name": "Brown", "hex": "#a52a2a"}
      },
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "sand-veil"},
      {"name": "sturdy"},
      {"name": "rock-head"}
    ]
  },
  {
    "id": 76,
    "order": 110,
    "name": "golem",
    "weight": 3000,
    "height": 14,
    "base_experience": 223,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/76.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/076.png",
    "types": [
      {
        "name": "rock",
        "color": {"name": "Brown", "hex": "#a52a2a"}
      },
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "sand-veil"},
      {"name": "sturdy"},
      {"name": "rock-head"}
    ]
  },
  {
    "id": 77,
    "order": 112,
    "name": "ponyta",
    "weight": 300,
    "height": 10,
    "base_experience": 82,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/77.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/077.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      }
    ],
    "abilities": [
      {"name": "flame-body"},
      {"name": "flash-fire"},
      {"name": "run-away"}
    ]
  },
  {
    "id": 78,
    "order": 113,
    "name": "rapidash",
    "weight": 950,
    "height": 17,
    "base_experience": 175,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/78.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/078.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      }
    ],
    "abilities": [
      {"name": "flame-body"},
      {"name": "flash-fire"},
      {"name": "run-away"}
    ]
  },
  {
    "id": 79,
    "order": 114,
    "name": "slowpoke",
    "weight": 360,
    "height": 12,
    "base_experience": 63,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/79.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/079.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      },
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "regenerator"},
      {"name": "own-tempo"},
      {"name": "oblivious"}
    ]
  },
  {
    "id": 80,
    "order": 115,
    "name": "slowbro",
    "weight": 785,
    "height": 16,
    "base_experience": 172,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/80.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/080.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      },
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "regenerator"},
      {"name": "own-tempo"},
      {"name": "oblivious"}
    ]
  },
  {
    "id": 81,
    "order": 118,
    "name": "magnemite",
    "weight": 60,
    "height": 3,
    "base_experience": 65,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/81.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/081.png",
    "types": [
      {
        "name": "electric",
        "color": {"name": "Yellow", "hex": "#ffff00"}
      },
      {
        "name": "steel",
        "color": {"name": "Cool gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "analytic"},
      {"name": "sturdy"},
      {"name": "magnet-pull"}
    ]
  },
  {
    "id": 82,
    "order": 119,
    "name": "magneton",
    "weight": 600,
    "height": 10,
    "base_experience": 163,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/82.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/082.png",
    "types": [
      {
        "name": "electric",
        "color": {"name": "Yellow", "hex": "#ffff00"}
      },
      {
        "name": "steel",
        "color": {"name": "Cool gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "analytic"},
      {"name": "sturdy"},
      {"name": "magnet-pull"}
    ]
  },
  {
    "id": 83,
    "order": 121,
    "name": "farfetchd",
    "weight": 150,
    "height": 8,
    "base_experience": 132,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/83.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/083.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "defiant"},
      {"name": "inner-focus"},
      {"name": "keen-eye"}
    ]
  },
  {
    "id": 84,
    "order": 122,
    "name": "doduo",
    "weight": 392,
    "height": 14,
    "base_experience": 62,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/84.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/084.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "tangled-feet"},
      {"name": "early-bird"},
      {"name": "run-away"}
    ]
  },
  {
    "id": 85,
    "order": 123,
    "name": "dodrio",
    "weight": 852,
    "height": 18,
    "base_experience": 165,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/85.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/085.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "tangled-feet"},
      {"name": "early-bird"},
      {"name": "run-away"}
    ]
  },
  {
    "id": 86,
    "order": 124,
    "name": "seel",
    "weight": 900,
    "height": 11,
    "base_experience": 65,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/86.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/086.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "ice-body"},
      {"name": "hydration"},
      {"name": "thick-fat"}
    ]
  },
  {
    "id": 87,
    "order": 125,
    "name": "dewgong",
    "weight": 1200,
    "height": 17,
    "base_experience": 166,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/87.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/087.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      },
      {
        "name": "ice",
        "color": {"name": "Cyan", "hex": "#00ffff"}
      }
    ],
    "abilities": [
      {"name": "ice-body"},
      {"name": "hydration"},
      {"name": "thick-fat"}
    ]
  },
  {
    "id": 88,
    "order": 126,
    "name": "grimer",
    "weight": 300,
    "height": 9,
    "base_experience": 65,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/88.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/088.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "poison-touch"},
      {"name": "sticky-hold"},
      {"name": "stench"}
    ]
  },
  {
    "id": 89,
    "order": 128,
    "name": "muk",
    "weight": 300,
    "height": 12,
    "base_experience": 175,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/89.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/089.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "poison-touch"},
      {"name": "sticky-hold"},
      {"name": "stench"}
    ]
  },
  {
    "id": 90,
    "order": 130,
    "name": "shellder",
    "weight": 40,
    "height": 3,
    "base_experience": 61,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/90.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/090.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "overcoat"},
      {"name": "skill-link"},
      {"name": "shell-armor"}
    ]
  },
  {
    "id": 91,
    "order": 131,
    "name": "cloyster",
    "weight": 1325,
    "height": 15,
    "base_experience": 184,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/91.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/091.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      },
      {
        "name": "ice",
        "color": {"name": "Cyan", "hex": "#00ffff"}
      }
    ],
    "abilities": [
      {"name": "overcoat"},
      {"name": "skill-link"},
      {"name": "shell-armor"}
    ]
  },
  {
    "id": 92,
    "order": 132,
    "name": "gastly",
    "weight": 1,
    "height": 13,
    "base_experience": 62,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/92.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/092.png",
    "types": [
      {
        "name": "ghost",
        "color": {"name": "Dark violet", "hex": "#9400d3"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "levitate"}
    ]
  },
  {
    "id": 93,
    "order": 133,
    "name": "haunter",
    "weight": 1,
    "height": 16,
    "base_experience": 142,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/93.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/093.png",
    "types": [
      {
        "name": "ghost",
        "color": {"name": "Dark violet", "hex": "#9400d3"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "levitate"}
    ]
  },
  {
    "id": 94,
    "order": 134,
    "name": "gengar",
    "weight": 405,
    "height": 15,
    "base_experience": 225,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/94.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/094.png",
    "types": [
      {
        "name": "ghost",
        "color": {"name": "Dark violet", "hex": "#9400d3"}
      },
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "cursed-body"}
    ]
  },
  {
    "id": 95,
    "order": 136,
    "name": "onix",
    "weight": 2100,
    "height": 88,
    "base_experience": 77,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/95.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/095.png",
    "types": [
      {
        "name": "rock",
        "color": {"name": "Brown", "hex": "#a52a2a"}
      },
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "weak-armor"},
      {"name": "sturdy"},
      {"name": "rock-head"}
    ]
  },
  {
    "id": 96,
    "order": 139,
    "name": "drowzee",
    "weight": 324,
    "height": 10,
    "base_experience": 66,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/96.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/096.png",
    "types": [
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "inner-focus"},
      {"name": "forewarn"},
      {"name": "insomnia"}
    ]
  },
  {
    "id": 97,
    "order": 140,
    "name": "hypno",
    "weight": 756,
    "height": 16,
    "base_experience": 169,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/97.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/097.png",
    "types": [
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "inner-focus"},
      {"name": "forewarn"},
      {"name": "insomnia"}
    ]
  },
  {
    "id": 98,
    "order": 141,
    "name": "krabby",
    "weight": 65,
    "height": 4,
    "base_experience": 65,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/98.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/098.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "sheer-force"},
      {"name": "shell-armor"},
      {"name": "hyper-cutter"}
    ]
  },
  {
    "id": 99,
    "order": 142,
    "name": "kingler",
    "weight": 600,
    "height": 13,
    "base_experience": 166,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/99.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/099.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "sheer-force"},
      {"name": "shell-armor"},
      {"name": "hyper-cutter"}
    ]
  },
  {
    "id": 100,
    "order": 143,
    "name": "voltorb",
    "weight": 104,
    "height": 5,
    "base_experience": 66,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/100.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/100.png",
    "types": [
      {
        "name": "electric",
        "color": {"name": "Yellow", "hex": "#ffff00"}
      }
    ],
    "abilities": [
      {"name": "aftermath"},
      {"name": "static"},
      {"name": "soundproof"}
    ]
  },
  {
    "id": 101,
    "order": 144,
    "name": "electrode",
    "weight": 666,
    "height": 12,
    "base_experience": 172,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/101.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/101.png",
    "types": [
      {
        "name": "electric",
        "color": {"name": "Yellow", "hex": "#ffff00"}
      }
    ],
    "abilities": [
      {"name": "aftermath"},
      {"name": "static"},
      {"name": "soundproof"}
    ]
  },
  {
    "id": 102,
    "order": 145,
    "name": "exeggcute",
    "weight": 25,
    "height": 4,
    "base_experience": 65,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/102.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/102.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      },
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "harvest"},
      {"name": "chlorophyll"}
    ]
  },
  {
    "id": 103,
    "order": 146,
    "name": "exeggutor",
    "weight": 1200,
    "height": 20,
    "base_experience": 186,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/103.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/103.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      },
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "harvest"},
      {"name": "chlorophyll"}
    ]
  },
  {
    "id": 104,
    "order": 148,
    "name": "cubone",
    "weight": 65,
    "height": 4,
    "base_experience": 64,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/104.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/104.png",
    "types": [
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "battle-armor"},
      {"name": "lightning-rod"},
      {"name": "rock-head"}
    ]
  },
  {
    "id": 105,
    "order": 149,
    "name": "marowak",
    "weight": 450,
    "height": 10,
    "base_experience": 149,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/105.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/105.png",
    "types": [
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      }
    ],
    "abilities": [
      {"name": "battle-armor"},
      {"name": "lightning-rod"},
      {"name": "rock-head"}
    ]
  },
  {
    "id": 106,
    "order": 153,
    "name": "hitmonlee",
    "weight": 498,
    "height": 15,
    "base_experience": 159,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/106.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/106.png",
    "types": [
      {
        "name": "fighting",
        "color": {"name": "Maroon", "hex": "#800000"}
      }
    ],
    "abilities": [
      {"name": "unburden"},
      {"name": "reckless"},
      {"name": "limber"}
    ]
  },
  {
    "id": 107,
    "order": 154,
    "name": "hitmonchan",
    "weight": 502,
    "height": 14,
    "base_experience": 159,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/107.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/107.png",
    "types": [
      {
        "name": "fighting",
        "color": {"name": "Maroon", "hex": "#800000"}
      }
    ],
    "abilities": [
      {"name": "inner-focus"},
      {"name": "iron-fist"},
      {"name": "keen-eye"}
    ]
  },
  {
    "id": 108,
    "order": 156,
    "name": "lickitung",
    "weight": 655,
    "height": 12,
    "base_experience": 77,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/108.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/108.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "cloud-nine"},
      {"name": "oblivious"},
      {"name": "own-tempo"}
    ]
  },
  {
    "id": 109,
    "order": 158,
    "name": "koffing",
    "weight": 10,
    "height": 6,
    "base_experience": 68,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/109.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/109.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "levitate"}
    ]
  },
  {
    "id": 110,
    "order": 159,
    "name": "weezing",
    "weight": 95,
    "height": 12,
    "base_experience": 172,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/110.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/110.png",
    "types": [
      {
        "name": "poison",
        "color": {"name": "Purple", "hex": "#800080"}
      }
    ],
    "abilities": [
      {"name": "levitate"}
    ]
  },
  {
    "id": 111,
    "order": 160,
    "name": "rhyhorn",
    "weight": 1150,
    "height": 10,
    "base_experience": 69,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/111.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/111.png",
    "types": [
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      },
      {
        "name": "rock",
        "color": {"name": "Brown", "hex": "#a52a2a"}
      }
    ],
    "abilities": [
      {"name": "reckless"},
      {"name": "rock-head"},
      {"name": "lightning-rod"}
    ]
  },
  {
    "id": 112,
    "order": 161,
    "name": "rhydon",
    "weight": 1200,
    "height": 19,
    "base_experience": 170,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/112.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/112.png",
    "types": [
      {
        "name": "ground",
        "color": {"name": "Sand", "hex": "#c2b280"}
      },
      {
        "name": "rock",
        "color": {"name": "Brown", "hex": "#a52a2a"}
      }
    ],
    "abilities": [
      {"name": "reckless"},
      {"name": "rock-head"},
      {"name": "lightning-rod"}
    ]
  },
  {
    "id": 113,
    "order": 164,
    "name": "chansey",
    "weight": 346,
    "height": 11,
    "base_experience": 395,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/113.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/113.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "healer"},
      {"name": "serene-grace"},
      {"name": "natural-cure"}
    ]
  },
  {
    "id": 114,
    "order": 166,
    "name": "tangela",
    "weight": 350,
    "height": 10,
    "base_experience": 87,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/114.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/114.png",
    "types": [
      {
        "name": "grass",
        "color": {"name": "Green", "hex": "#00ff00"}
      }
    ],
    "abilities": [
      {"name": "regenerator"},
      {"name": "leaf-guard"},
      {"name": "chlorophyll"}
    ]
  },
  {
    "id": 115,
    "order": 168,
    "name": "kangaskhan",
    "weight": 800,
    "height": 22,
    "base_experience": 172,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/115.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/115.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "inner-focus"},
      {"name": "scrappy"},
      {"name": "early-bird"}
    ]
  },
  {
    "id": 116,
    "order": 170,
    "name": "horsea",
    "weight": 80,
    "height": 4,
    "base_experience": 59,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/116.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/116.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "damp"},
      {"name": "sniper"},
      {"name": "swift-swim"}
    ]
  },
  {
    "id": 117,
    "order": 171,
    "name": "seadra",
    "weight": 250,
    "height": 12,
    "base_experience": 154,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/117.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/117.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "damp"},
      {"name": "sniper"},
      {"name": "poison-point"}
    ]
  },
  {
    "id": 118,
    "order": 173,
    "name": "goldeen",
    "weight": 150,
    "height": 6,
    "base_experience": 64,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/118.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/118.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "lightning-rod"},
      {"name": "water-veil"},
      {"name": "swift-swim"}
    ]
  },
  {
    "id": 119,
    "order": 174,
    "name": "seaking",
    "weight": 390,
    "height": 13,
    "base_experience": 158,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/119.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/119.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "lightning-rod"},
      {"name": "water-veil"},
      {"name": "swift-swim"}
    ]
  },
  {
    "id": 120,
    "order": 175,
    "name": "staryu",
    "weight": 345,
    "height": 8,
    "base_experience": 68,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/120.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/120.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "analytic"},
      {"name": "natural-cure"},
      {"name": "illuminate"}
    ]
  },
  {
    "id": 121,
    "order": 176,
    "name": "starmie",
    "weight": 800,
    "height": 11,
    "base_experience": 182,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/121.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/121.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      },
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "analytic"},
      {"name": "natural-cure"},
      {"name": "illuminate"}
    ]
  },
  {
    "id": 122,
    "order": 178,
    "name": "mr-mime",
    "weight": 545,
    "height": 13,
    "base_experience": 161,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/122.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/122.png",
    "types": [
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "technician"},
      {"name": "filter"},
      {"name": "soundproof"}
    ]
  },
  {
    "id": 123,
    "order": 179,
    "name": "scyther",
    "weight": 560,
    "height": 15,
    "base_experience": 100,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/123.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/123.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "steadfast"},
      {"name": "technician"},
      {"name": "swarm"}
    ]
  },
  {
    "id": 124,
    "order": 183,
    "name": "jynx",
    "weight": 406,
    "height": 14,
    "base_experience": 159,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/124.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/124.png",
    "types": [
      {
        "name": "ice",
        "color": {"name": "Cyan", "hex": "#00ffff"}
      },
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "dry-skin"},
      {"name": "forewarn"},
      {"name": "oblivious"}
    ]
  },
  {
    "id": 125,
    "order": 185,
    "name": "electabuzz",
    "weight": 300,
    "height": 11,
    "base_experience": 172,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/125.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/125.png",
    "types": [
      {
        "name": "electric",
        "color": {"name": "Yellow", "hex": "#ffff00"}
      }
    ],
    "abilities": [
      {"name": "vital-spirit"},
      {"name": "static"}
    ]
  },
  {
    "id": 126,
    "order": 188,
    "name": "magmar",
    "weight": 445,
    "height": 13,
    "base_experience": 173,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/126.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/126.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      }
    ],
    "abilities": [
      {"name": "vital-spirit"},
      {"name": "flame-body"}
    ]
  },
  {
    "id": 127,
    "order": 190,
    "name": "pinsir",
    "weight": 550,
    "height": 15,
    "base_experience": 175,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/127.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/127.png",
    "types": [
      {
        "name": "bug",
        "color": {"name": "Olive", "hex": "#808000"}
      }
    ],
    "abilities": [
      {"name": "moxie"},
      {"name": "mold-breaker"},
      {"name": "hyper-cutter"}
    ]
  },
  {
    "id": 128,
    "order": 192,
    "name": "tauros",
    "weight": 884,
    "height": 14,
    "base_experience": 172,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/128.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/128.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "sheer-force"},
      {"name": "anger-point"},
      {"name": "intimidate"}
    ]
  },
  {
    "id": 129,
    "order": 193,
    "name": "magikarp",
    "weight": 100,
    "height": 9,
    "base_experience": 40,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/129.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/129.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "rattled"},
      {"name": "swift-swim"}
    ]
  },
  {
    "id": 130,
    "order": 194,
    "name": "gyarados",
    "weight": 2350,
    "height": 65,
    "base_experience": 189,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/130.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/130.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "moxie"},
      {"name": "intimidate"}
    ]
  },
  {
    "id": 131,
    "order": 196,
    "name": "lapras",
    "weight": 2200,
    "height": 25,
    "base_experience": 187,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/131.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/131.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      },
      {
        "name": "ice",
        "color": {"name": "Cyan", "hex": "#00ffff"}
      }
    ],
    "abilities": [
      {"name": "hydration"},
      {"name": "shell-armor"},
      {"name": "water-absorb"}
    ]
  },
  {
    "id": 132,
    "order": 197,
    "name": "ditto",
    "weight": 40,
    "height": 3,
    "base_experience": 101,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/132.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "imposter"},
      {"name": "limber"}
    ]
  },
  {
    "id": 133,
    "order": 198,
    "name": "eevee",
    "weight": 65,
    "height": 3,
    "base_experience": 65,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/133.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/133.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "anticipation"},
      {"name": "adaptability"},
      {"name": "run-away"}
    ]
  },
  {
    "id": 134,
    "order": 199,
    "name": "vaporeon",
    "weight": 290,
    "height": 10,
    "base_experience": 184,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/134.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/134.png",
    "types": [
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "hydration"},
      {"name": "water-absorb"}
    ]
  },
  {
    "id": 135,
    "order": 200,
    "name": "jolteon",
    "weight": 245,
    "height": 8,
    "base_experience": 184,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/135.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/135.png",
    "types": [
      {
        "name": "electric",
        "color": {"name": "Yellow", "hex": "#ffff00"}
      }
    ],
    "abilities": [
      {"name": "quick-feet"},
      {"name": "volt-absorb"}
    ]
  },
  {
    "id": 136,
    "order": 201,
    "name": "flareon",
    "weight": 250,
    "height": 9,
    "base_experience": 184,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/136.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/136.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      }
    ],
    "abilities": [
      {"name": "guts"},
      {"name": "flash-fire"}
    ]
  },
  {
    "id": 137,
    "order": 207,
    "name": "porygon",
    "weight": 365,
    "height": 8,
    "base_experience": 79,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/137.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/137.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "analytic"},
      {"name": "download"},
      {"name": "trace"}
    ]
  },
  {
    "id": 138,
    "order": 210,
    "name": "omanyte",
    "weight": 75,
    "height": 4,
    "base_experience": 71,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/138.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/138.png",
    "types": [
      {
        "name": "rock",
        "color": {"name": "Brown", "hex": "#a52a2a"}
      },
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "weak-armor"},
      {"name": "shell-armor"},
      {"name": "swift-swim"}
    ]
  },
  {
    "id": 139,
    "order": 211,
    "name": "omastar",
    "weight": 350,
    "height": 10,
    "base_experience": 173,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/139.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/139.png",
    "types": [
      {
        "name": "rock",
        "color": {"name": "Brown", "hex": "#a52a2a"}
      },
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "weak-armor"},
      {"name": "shell-armor"},
      {"name": "swift-swim"}
    ]
  },
  {
    "id": 140,
    "order": 212,
    "name": "kabuto",
    "weight": 115,
    "height": 5,
    "base_experience": 71,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/140.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/140.png",
    "types": [
      {
        "name": "rock",
        "color": {"name": "Brown", "hex": "#a52a2a"}
      },
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "weak-armor"},
      {"name": "battle-armor"},
      {"name": "swift-swim"}
    ]
  },
  {
    "id": 141,
    "order": 213,
    "name": "kabutops",
    "weight": 405,
    "height": 13,
    "base_experience": 173,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/141.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/141.png",
    "types": [
      {
        "name": "rock",
        "color": {"name": "Brown", "hex": "#a52a2a"}
      },
      {
        "name": "water",
        "color": {"name": "Azure", "hex": "#007fff"}
      }
    ],
    "abilities": [
      {"name": "weak-armor"},
      {"name": "battle-armor"},
      {"name": "swift-swim"}
    ]
  },
  {
    "id": 142,
    "order": 214,
    "name": "aerodactyl",
    "weight": 590,
    "height": 18,
    "base_experience": 180,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/142.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/142.png",
    "types": [
      {
        "name": "rock",
        "color": {"name": "Brown", "hex": "#a52a2a"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "unnerve"},
      {"name": "pressure"},
      {"name": "rock-head"}
    ]
  },
  {
    "id": 143,
    "order": 217,
    "name": "snorlax",
    "weight": 4600,
    "height": 21,
    "base_experience": 189,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/143.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/143.png",
    "types": [
      {
        "name": "normal",
        "color": {"name": "Warm gray", "hex": "#808080"}
      }
    ],
    "abilities": [
      {"name": "gluttony"},
      {"name": "thick-fat"},
      {"name": "immunity"}
    ]
  },
  {
    "id": 144,
    "order": 218,
    "name": "articuno",
    "weight": 554,
    "height": 17,
    "base_experience": 261,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/144.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/144.png",
    "types": [
      {
        "name": "ice",
        "color": {"name": "Cyan", "hex": "#00ffff"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "snow-cloak"},
      {"name": "pressure"}
    ]
  },
  {
    "id": 145,
    "order": 219,
    "name": "zapdos",
    "weight": 526,
    "height": 16,
    "base_experience": 261,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/145.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/145.png",
    "types": [
      {
        "name": "electric",
        "color": {"name": "Yellow", "hex": "#ffff00"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "static"},
      {"name": "pressure"}
    ]
  },
  {
    "id": 146,
    "order": 220,
    "name": "moltres",
    "weight": 600,
    "height": 20,
    "base_experience": 261,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/146.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/146.png",
    "types": [
      {
        "name": "fire",
        "color": {"name": "Orange", "hex": "#ffa500"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "flame-body"},
      {"name": "pressure"}
    ]
  },
  {
    "id": 147,
    "order": 221,
    "name": "dratini",
    "weight": 33,
    "height": 18,
    "base_experience": 60,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/147.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/147.png",
    "types": [
      {
        "name": "dragon",
        "color": {"name": "Indigo", "hex": "#4b0082"}
      }
    ],
    "abilities": [
      {"name": "marvel-scale"},
      {"name": "shed-skin"}
    ]
  },
  {
    "id": 148,
    "order": 222,
    "name": "dragonair",
    "weight": 165,
    "height": 40,
    "base_experience": 147,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/148.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/148.png",
    "types": [
      {
        "name": "dragon",
        "color": {"name": "Indigo", "hex": "#4b0082"}
      }
    ],
    "abilities": [
      {"name": "marvel-scale"},
      {"name": "shed-skin"}
    ]
  },
  {
    "id": 149,
    "order": 223,
    "name": "dragonite",
    "weight": 2100,
    "height": 22,
    "base_experience": 270,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/149.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/149.png",
    "types": [
      {
        "name": "dragon",
        "color": {"name": "Indigo", "hex": "#4b0082"}
      },
      {
        "name": "flying",
        "color": {"name": "Lavender", "hex": "#e6e6fa"}
      }
    ],
    "abilities": [
      {"name": "multiscale"},
      {"name": "inner-focus"}
    ]
  },
  {
    "id": 150,
    "order": 224,
    "name": "mewtwo",
    "weight": 1220,
    "height": 20,
    "base_experience": 306,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/150.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/150.png",
    "types": [
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "unnerve"},
      {"name": "pressure"}
    ]
  },
  {
    "id": 151,
    "order": 227,
    "name": "mew",
    "weight": 40,
    "height": 4,
    "base_experience": 270,
    "image":
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/151.png",
    "imageCover":
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/151.png",
    "types": [
      {
        "name": "psychic",
        "color": {"name": "Hot pink", "hex": "#ff69b4"}
      }
    ],
    "abilities": [
      {"name": "synchronize"}
    ]
  }
];

List<Map<String, dynamic>> get items {
    return [..._items];
  }

  void addProduct(Map<String, dynamic> value) {
    _items.add(value);
    notifyListeners();
  }

  // List<Pokemon> get items {
  //   return [..._items];
  // }

  // void addProduct(Pokemon value) {
  //   _items.add(value);
  //   notifyListeners();
  // }
}
