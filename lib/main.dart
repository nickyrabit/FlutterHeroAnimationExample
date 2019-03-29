import 'package:flutter/material.dart';
import 'package:flutter_nav_routes/search_screen.dart';
import 'package:flutter_nav_routes/tile_screen_one.dart';

//initializing  image links
var imageAsset = new Image.asset('assets/nav_header_backgournd.png');
var imageLink = "https://source.unsplash.com/random";

//this is where the app begins
void main() {
  runApp(new MaterialApp(
    //removing that annoying debug banner
    debugShowCheckedModeBanner: false,

    //declaring home class
    home: new MyStatelessWidget(),
  ));
}

//defining a widget
final paddingSide = Padding(
  padding: EdgeInsets.only(bottom: 12),
);

//this is the home class
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //safe area makes the widgets to stop intruding phyisical barriers of the phone this app doesnt have AppBar
    return new SafeArea(
      child: new Scaffold(
        body: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.white70,

            //Setting scrollview
            child: new SingleChildScrollView(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  //this is the textview
                  new Text(
                    'Hello Nicky',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 25,
                        color: Colors.black.withOpacity(0.65)),
                  ),

                  new Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: new Text(
                        'Historia Ya Kale',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.65)),
                      )),
                  //setting hero animation. you must have a TAG and it should be the same to both screens(if translating between screens)
                  //hero animation should have one child only.
                  Hero(
                      tag: "heroSearchBar",
                      child: new Container(
                          padding: EdgeInsets.only(bottom: 20),
                          child: new TextField(
                            //handling on click
                            onTap: () {
                              //opening a new screen called SearchStatelessWidget using Navigator.push
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SearchStatelessWidget()));
                            },
                            //setting the shape of the input decoration
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black38,
                                ),
                                contentPadding: const EdgeInsets.all(13.0),
                                //setting the border of the textfield
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23.0),
                                    borderSide:
                                        new BorderSide(color: Colors.black12)),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.normal),
                                fillColor: Colors.black12,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23.0),
                                    borderSide:
                                        new BorderSide(color: Colors.black12)),
                                filled: true),
                          ))),

                  /**getting image from online
              ClipRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.5,
                  child: Image.network(imageLink),

                ),

),
             **/

                  //setting hero animation. you must have a TAG and it should be the same to both screens(if translating between screens)
                  //hero animation should have one child only.
                  Hero(
                    tag: "tile_one",

                    // ClipRRect A widget that clips its child using a rounded rectangle. it needs BorderRadius
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      clipBehavior: Clip.hardEdge,

                      //i use gesture detector to detect the touches inside the ClipRRect
                      child: GestureDetector(
                        onTap: () {
                          //opening a new screen
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstTileWidget()));
                        },
                        child: Image.asset("assets/nav_header_backgournd.png"),
                      ),
                    ),
                  ),
                  paddingSide,

                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    clipBehavior: Clip.hardEdge,
                    child: GestureDetector(
                      child: Image.asset("assets/nav_header_backgournd.png"),
                    ),
                  ),
                  paddingSide,
                  //getting image from local
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    clipBehavior: Clip.hardEdge,
                    child: GestureDetector(
                      child: Image.asset("assets/nav_header_backgournd.png"),
                    ),
                  ),
                  paddingSide,
                  //getting image from local
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    clipBehavior: Clip.hardEdge,
                    child: GestureDetector(
                      child: Image.asset("assets/nav_header_backgournd.png"),
                    ),
                  ),
                  paddingSide,
                  //getting image from local
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    clipBehavior: Clip.hardEdge,
                    child: GestureDetector(
                      child: Image.asset("assets/nav_header_backgournd.png"),
                    ),
                  ),
                  paddingSide,
                  //getting image from local
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    clipBehavior: Clip.hardEdge,
                    child: GestureDetector(
                      child: Image.asset("assets/nav_header_backgournd.png"),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
