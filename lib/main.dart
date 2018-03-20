import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scrape/Routes.dart';
import 'package:scrape/ui/home/HomePage.dart';

void main() {
  Routes.initRoutes();
  runApp(new MaterialApp(
    title: "Scrapes",
    home: new HomePage(),
  ));
}


