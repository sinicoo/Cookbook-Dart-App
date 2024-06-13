import 'package:flutter/material.dart';
import 'package:cookbook/Country/ph.dart';
import 'package:cookbook/Country/france.dart';
import 'package:cookbook/Country/china.dart';
import 'package:cookbook/Country/japan.dart';
import 'package:cookbook/Country/italy.dart';
import 'package:cookbook/Food/adobo.dart';
import 'package:cookbook/Food/sinigang.dart';
import 'package:cookbook/Food/pancit.dart';
import 'package:cookbook/favorites_screen.dart';

class Country {
  final String image;
  final String name;
  Country(this.image, this.name);
}

class ExploreMenuPage extends StatelessWidget {
  final List<Country> countries = [
    Country('images/ph.png', 'Filipino'),
    Country('images/japan.png', 'Japanese'),
    Country('images/italy.png', 'Italian'),
    Country('images/france.png', 'French'),
    Country('images/china.png', 'Chinese')
  ];
  final List<FavoriteItem> favorites = [];

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset('images/CBlogo.png'),
          ),
        ),
        title: Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite),
                  color: Color(0xffff0000),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              FavoritesScreen(favorites: favorites)),
                    );
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search recipes',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  color: Color(0xff080808),
                  onPressed: () {
                    String searchQuery = searchController.text.toLowerCase();
                    if (searchQuery == 'adobo') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdoboRecipeScreen()),
                      );
                    } else if (searchQuery == 'sinigang') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SinigangRecipeScreen()),
                      );
                    } else if (searchQuery == 'pancit') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PancitRecipeScreen()),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Explore Menu',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: countries.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 10.0);
              },
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    if (countries[index].name == 'Chinese') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChineseDishes()),
                      );
                    } else if (countries[index].name == 'French') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FrenchDishes()),
                      );
                    } else if (countries[index].name == 'Filipino') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilipinoDishes()),
                      );
                    } else if (countries[index].name == 'Japanese') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => JapaneseDishes()),
                      );
                    } else if (countries[index].name == 'Italian') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItalianDishes()),
                      );
                    }
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(countries[index].image),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        countries[index].name,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
