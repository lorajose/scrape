import 'package:scrape/model/Scrape.dart';
class PlanetDao {

  static final List<Planet> planets = [
    const Planet(
      id: "1",
      name: "Sports",
      //location: "scrape game.",
      //distance: "3",
      //gravity: "5,000 US ",
      //description: "Lorem ipsum...",
      image: "assets/img/deportes.png",
    ),
    const Planet(
      id: "2",
      name: "Educational",
      //location: "scrape game.",
      //distance: "4",
      //gravity: "50,000 US ",
      //description: "Lorem ipsum...",
      image: "assets/img/others1.png",
    ),
    const Planet(
      id: "3",
      name: "Animated",
      //location: "scrape game.",
      //distance: "2",
      //gravity: "30,000 US ",
      //description: "Lorem ipsum...",
      image: "assets/img/deportes1.png",
    ),
   /* const Planet(
      id: "4",
      name: "Game",
      //location: "scrape game.",
      //distance: "6",
      //gravity: "10,000 US ",
      //description: "Lorem ipsum...",
      image: "assets/img/earth.png",
    ),*/
    const Planet(
      id: "4",
      name: "Others",
      //location: "scrape game.",
      //distance: "7",
      //gravity: "15,000 US ",
      //description: "Lorem ipsum...",
      image: "assets/img/others.png",
    ),
  ];

  static Planet getPlanetById(id) {
    return planets
        .where((p) => p.id == id)
        .first;
  }
}