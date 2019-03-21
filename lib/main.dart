import 'package:flutter/material.dart';

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
      child: new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
      new Text('Hello Nicky', style: TextStyle(fontFamily: 'Lato',fontSize: 25),),
        new Container(
          padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
      child: new Text('Historia Ya Kale', style: TextStyle(fontFamily: 'Lato',fontSize: 35, fontWeight: FontWeight.bold), )

        )
        ,
        new Container(


          child: new TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(13.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(23.0),
                borderSide: new BorderSide(color: Colors.black12)),
              hintText: "Search",
              hintStyle: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.normal)
            ),

          )
        )

        




    ],
    ),
    ),
    )
    ,
    );

  }





}


class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}