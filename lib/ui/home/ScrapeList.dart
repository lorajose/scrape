import 'package:flutter/material.dart';
import 'package:scrape/ui/home/ScrapeRow.dart';
import 'package:scrape/Theme.dart' as Theme;
import 'package:scrape/model/Scrapes.dart';

class PlanetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Flexible(
      child: new Container(
        color: Theme.Colors.planetPageBackground,
        child: new ListView.builder(
          itemExtent: 115.0,
          itemCount: PlanetDao.planets.length,
          itemBuilder: (_, index) => new PlanetRow(PlanetDao.planets[index]),
        ),
      ),
    );
  }
}