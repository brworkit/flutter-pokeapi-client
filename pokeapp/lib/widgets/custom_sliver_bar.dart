import 'package:flutter/material.dart';
import 'package:pokeapp/widgets/app_bar.dart';

// class CustomSliverAppBar extends StatelessWidget {
//   const CustomSliverAppBar({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       backgroundColor: Colors.red,
//       floating: true,
//       snap: true,
//       title: AppBarTitle(),
//       actions: createAppBarActions(),
//     );
//   }

//   List<Widget> createAppBarActions() {
//     return <Widget>[
//       Icon(Icons.search),
//       SizedBox(
//         width: 15,
//       ),
//     ];
//   }
// }


class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,      
      title: AppBarTitle(),
      actions: createAppBarActions(),
    );
  }

  List<Widget> createAppBarActions() {
    return <Widget>[
      Icon(Icons.search),
      SizedBox(
        width: 15,
      ),
    ];
  }
}
