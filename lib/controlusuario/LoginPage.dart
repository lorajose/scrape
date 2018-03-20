import 'package:flutter/material.dart';

const Color _kAppBackgroundColor = const Color(0xFF353662);
const Duration _kScrollDuration = const Duration(milliseconds: 400);
const Curve _kScrollCurve = Curves.fastOutSlowIn;

const double _kAppBarMinHeight = 90.0;
const double _kAppBarMidHeight = 256.0;

//Login Page
class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this,
        duration: new Duration(milliseconds: 500)
    ); //AnimationController
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeOut
    );
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }


  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/img/fondo.jpeg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ), //Imagen
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 100,
              ), //fluterLogo
              new Form(
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle: new TextStyle(
                          color: Colors.teal,
                          fontSize: 20.0
                      ),//TextStyle
                    ),//InputDecoretorTheme
                  ),//ThemeData
                  child: new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Email",
                          ),//InputDecoration
                          keyboardType: TextInputType.emailAddress,
                        ), //TextFormField1 Email
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Password",
                          ),//InputDecoration
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ), //TextFormField2 Password
                        new Padding(
                            padding: const EdgeInsets.only(top: 40.0)
                        ),//Padding
                        new MaterialButton(
                          height: 40.0,
                          minWidth: 100.0,
                          color: Colors.teal,
                          textColor: Colors.white,
                          child: new Text(
                              "Login"
                          ),//Text
                          onPressed: () => {},
                          splashColor: Colors.redAccent,
                        ),//MaterialButton
                      ],//Widget
                    ),//Column
                  ),//Container
                ),//Theme
              ),//Form
            ],//<widget>
          )//Colum
        ],//<widget>[]
      ),//Stack
    );//Scaffold
  }
}
