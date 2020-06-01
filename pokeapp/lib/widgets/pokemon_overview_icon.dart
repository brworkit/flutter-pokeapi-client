import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:pokeapp/models/pokemon.dart';
import 'package:strcolor/strcolor.dart';

class PokemonOverviewIcon extends StatelessWidget {
  const PokemonOverviewIcon({Key key, @required this.item})
      : super(key: key);

  final Pokemon item;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.mic, color: Colors.white,),
      onPressed: () {
          // play();
      },
    );
  }


  play() async {
    AudioPlayer.logEnabled = true;
    AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
    int result = await audioPlayer.play("assets/sounds/bulbassaur_en.ogg", isLocal: true);
    
    if (result == 1) {
      print("Sound Played");
    }
  }

} 