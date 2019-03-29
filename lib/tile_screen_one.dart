import "package:flutter/material.dart";
import 'package:flutter_nav_routes/main.dart';

class FirstTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: new Column(
          children: <Widget>[
            //receiving the hero using THE SAME TAG i used earlier, thats the rule
            Hero(
              tag: "tile_one",
              child: Image.asset("assets/nav_header_backgournd.png"),
            ),
            paddingSide,
            paddingSide,
            new Text(
              "This is the First Tile Clicked",
              maxLines: 1,
              style: TextStyle(
                  fontFamily: 'Lato', fontSize: 35, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            new Icon(
              Icons.lightbulb_outline,
              color: Colors.blue,
              size: 100,
            )
          ],
        ),
      )),
    );
  }
}
