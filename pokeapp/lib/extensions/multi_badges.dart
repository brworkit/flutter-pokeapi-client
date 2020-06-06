import 'package:flutter/material.dart';

class HexaRectangleBadge extends StatelessWidget {
  const HexaRectangleBadge(
      {Key key,
      @required this.child,
      this.padding = const EdgeInsets.all(4),
      this.backgroundColor = Colors.transparent,
      this.width = 50.0,
      this.height = 20.0})
      : super(key: key);

  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final Widget child;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: this.padding,
          child: Container(
            width: this.width,
            height: this.height,
            color: this.backgroundColor,
            child: Center(
              child: FittedBox(child: this.child),
            ),
          ),
        ));
  }
}
