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
      child: new Text('Historia Ya Kale', style: TextStyle(fontFamily: 'Roboto',fontSize: 30), )

        )

        ,
            new Container(
            padding: EdgeInsets.only(left: 10.0,right:10.0),
            decoration: new BoxDecoration(
                color: Colors.grey[300],
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0),
                    bottomLeft:const Radius.circular(40.0),
                    bottomRight: const Radius.circular(40.0))),

                child: TextFormField(
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: new Icon(Icons.search, color: Colors.grey, ),
                    hintText: 'Tafuta',
                    hintStyle: TextStyle(fontFamily: 'Lato'),

                  ),
                )


            ),






    ],
    ),
    ),
    )
    ,
    );

  }



  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

}



class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new SafeArea(
      child : new Scaffold(

        appBar: AppBar(
          title: Text('New Slide'),
        )
    )
    );
  }

}
