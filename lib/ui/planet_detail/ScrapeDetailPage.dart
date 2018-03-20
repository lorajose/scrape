import 'package:flutter/material.dart';
import 'package:scrape/model/Scrape.dart';
import 'package:scrape/model/Scrapes.dart';
import 'package:scrape/ui/planet_detail/DetailAppBar.dart';
import 'package:scrape/ui/planet_detail/ScrapeDetailBody.dart';

class PlanetDetailPage extends StatelessWidget {

  final Planet planet;

  PlanetDetailPage(String id) :
        planet = PlanetDao.getPlanetById(id);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new PlanetDetailBody(planet),
          new DetailAppBar(),
        ],
      ),
    );
  }
}