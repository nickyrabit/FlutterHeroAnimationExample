import 'package:flutter/material.dart';
import 'package:flutter_nav_routes/search_screen.dart';


//initializing variables
var imageAsset = new Image.asset('assets/nav_header_backgournd.png');
var imageLink = "https://source.unsplash.com/random";

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,

    home: new MyStatelessWidget(),
  ));
}





class MyStatelessWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return new SafeArea(
    child: new Scaffold(



      body: Container(
      padding: EdgeInsets.all(30.0),
      color: Colors.white70,

        child : new SingleChildScrollView(
          child: new Column(



            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[


              new Text('Hello Nicky', style: TextStyle(fontFamily: 'Lato',fontSize: 25),),
              new Container(
                  padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child: new Text('Historia Ya Kale', style: TextStyle(fontFamily: 'Lato',fontSize: 35, fontWeight: FontWeight.bold), )

              )
              ,
              Hero(
                  tag: "heroSearchBar",
                  child: new Container(
                      child: new TextField(
                        //handling on click
                        onTap: (){
                          //opening a new screen
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SearchStatelessWidget())
                          );},
                        //setting the shape of the input decoration
                        decoration: InputDecoration(prefixIcon: Icon(Icons.search, color: Colors.black38,),
                            contentPadding: const EdgeInsets.all(13.0),
                            //setting the border of the textfield
                            border: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(23.0),
                                borderSide: new BorderSide(color: Colors.black12)),
                            hintText: "Search",
                            hintStyle: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.normal),
                            fillColor: Colors.black12,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23.0),
                                borderSide: new BorderSide(color: Colors.black12)),
                            filled: true
                        ),


                      )

                  )

              ),

              ClipRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.5,
                  child: Image.network(imageLink),

                ),

)



            ],
          ),

        )


    ),
    )
    ,
    );

  }





}


