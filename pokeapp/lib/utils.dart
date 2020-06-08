import 'package:flutter/material.dart';

double widthSize(double percent, BuildContext context) {
  return percent * MediaQuery.of(context).size.width;
}

double heightSize(double percent, BuildContext context) {
  return percent * MediaQuery.of(context).size.height;
}
