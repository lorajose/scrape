
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey
      ),//ThemeData
      home: new HomePage(),
    );//MaterialApp

  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //Scaffold
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Scrape App"),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0 : 0.0,
      ),//AppBar
      
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            //UserAccountsDrawerHeader
            new UserAccountsDrawerHeader(
              accountName: new Text("Usuario Name"),
              accountEmail: new Text("Moneda : 100US"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: new Text("UN"),
              ),//CircleAvatar
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: new Text("U"),
                 ),
              ],//OtherCircleAvatar
            ),//UserAccountsDrawerHeader

            //ListTile menu
            new ListTile(
              title: new Text("Change Money"),
              trailing: new Icon(Icons.monetization_on)
            ),//ListTitle 1

            new ListTile(
                title: new Text("Transfers"),
                trailing: new Icon(Icons.transfer_within_a_station)
            ),//ListTitle 2

            new ListTile(
                title: new Text("Scrape"),
                trailing: new Icon(Icons.screen_share)
            ),//ListTitle 3

            new ListTile(
                title: new Text("Setting"),
                trailing: new Icon(Icons.settings)
            ),//ListTitle 4

            new ListTile(
                title: new Text("Sing Out"),
                trailing: new Icon(Icons.close),
                onTap: ()=> Navigator.of(context).pop(),//LostTile
            ),//ListTitle 3

          ],//Widget []
        ),//listview
      ),//drawer

      //Container Body
      body:  new Container(
        child:  new Center(
          child:  new Text("Home Page"),
        ),//Center de container Body
      ),//Container Body
    );//Scaffold
  }
}