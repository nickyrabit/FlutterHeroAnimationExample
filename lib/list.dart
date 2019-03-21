import 'package:flutter/material.dart';

class SearchStatelessWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new SafeArea(child:  new Scaffold(

      body: Container(
        padding: EdgeInsets.all(30.0),
        color: Colors.white70,

        child: new Column(
          children: <Widget>[
            Hero(
                tag: "heroSearchBar",
                child: new Container(
                    child: new TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search, color: Colors.black38,),
                        contentPadding: const EdgeInsets.all(13.0),
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


          ],


        ),



      )



    )


        );


    return null;
  }


}