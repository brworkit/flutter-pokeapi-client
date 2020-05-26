import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  final String titleText;
  CustomAppBar({this.titleText}) : super();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[

      ],      
      title: Text(this.titleText),       
    );
  }
}
