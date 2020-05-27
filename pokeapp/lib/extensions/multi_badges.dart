import 'package:flutter/material.dart';

class HexaRectangleBadge extends StatelessWidget {
  const HexaRectangleBadge(
      {Key key,
      @required this.backgroundColor,
      @required this.child,
      this.width = 50.0,
      this.height = 20.0})
      : super(key: key);

  final Color backgroundColor;
  final Widget child;
  final width;
  final height;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            width: this.width,
            height: this.height,
            color: this.backgroundColor,
            child: Center(
              child: this.child,
            ),
          ),
        ));
  }
}
