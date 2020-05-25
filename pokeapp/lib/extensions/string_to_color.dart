// import 'package:flutter/material.dart';

// const Map<String, Color> COLORS = {
//   "black": Colors.black,
//   "white": Colors.white,
//   "transparent": Colors.transparent,
//   "green": Colors.green,
//   "greenAccent": Colors.greenAccent,
//   "lightGreen": Colors.lightGreen,
//   "lightGreenAccent": Colors.lightGreenAccent,
//   "blue": Colors.blue,
//   "blueAccent": Colors.blueAccent,
//   "blueGrey": Colors.blueGrey,
//   "lightBlue": Colors.lightBlue,
//   "lightBlueAccent": Colors.lightBlueAccent,
//   "red": Colors.red,
//   "redAccent": Colors.redAccent,
//   "orange": Colors.orange,
//   "orangeAccent": Colors.orangeAccent,
//   "deepOrange": Colors.deepOrange,
//   "deepOrangeAccent": Colors.deepOrangeAccent,
//   "brown": Colors.brown,
//   "amber": Colors.amber,
//   "amberAccent": Colors.amberAccent,
//   "yellow": Colors.yellow,
//   "yellowAccent": Colors.yellowAccent,
//   "cyan": Colors.cyan,
//   "cyanAccent": Colors.cyanAccent,
//   "purple": Colors.purple,
//   "purpleAccent": Colors.purpleAccent,
//   "deepPurple": Colors.deepPurple,
//   "deepPurpleAccent": Colors.deepPurpleAccent,
//   "grey": Colors.grey,
//   "indigo": Colors.indigo,
//   "indigoAccent": Colors.indigoAccent,
//   "lime": Colors.lime,
//   "limeAccent": Colors.limeAccent,
//   "pink": Colors.pink,
//   "pinkAccent": Colors.pinkAccent,
//   "teal": Colors.teal,
//   "tealAccent": Colors.tealAccent
// };

// extension StringToColor on String {
//   static final start = 1, end = 7, radix = 16, complement = 0xFF000000;

//   colorFromHex() {
//     return Color(int.parse(this.substring(start, end), radix: radix) + complement);
//   }

//   color() {
//     try {
//       if (COLORS.containsKey(this)) {
//         return COLORS[this];
//       }
//       return this.colorFromHex();
//     } catch (e) {
//       return Colors.transparent;
//     }
//   }
// }

// extension ContrastToColor on Color {
//   static final brightness = 0.5;

//   contrast() {
//     try {
//       return this.computeLuminance() > brightness ? Colors.black87 : Colors.white;
//     } catch (e) {
//       return Colors.white;
//     }
//   }

// }
