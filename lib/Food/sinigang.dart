import 'package:flutter/material.dart';
import 'package:cookbook/favorites_screen.dart';

class SinigangRecipeScreen extends StatefulWidget {
  @override
  _SinigangRecipeScreenState createState() => _SinigangRecipeScreenState();
}

class _SinigangRecipeScreenState extends State<SinigangRecipeScreen> {
  bool _isFavorite = false;
  final List<FavoriteItem> _favorites = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Sinigang Recipe'),
        actions: [
          IconButton(
            icon: Icon(
              _isFavorite ? Icons.favorite : Icons.favorite_border,
              color: _isFavorite ? Colors.red : null,
            ),
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
                if (_isFavorite) {
                  _favorites.add(FavoriteItem(
                    name: 'Sinigang Recipe',
                    imagePath: 'images/Filipino/Sinigang.png',
                  ));
                } else {
                  _favorites.removeWhere(
                      (favorite) => favorite.name == 'Sinigang Recipe');
                }
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      FavoritesScreen(favorites: _favorites),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/Filipino/Sinigang.png'),
                fit: BoxFit.cover,
              )),
              child: Container(
                padding: EdgeInsets.all(16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                'Ingredients',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  IngredientItem(name: '1 lb pork belly or beef short ribs'),
                  IngredientItem(name: '1 onion, chopped'),
                  IngredientItem(name: '2 tomatoes'),
                  IngredientItem(
                      name:
                          '1 pack tamarind soup mix or 1 cup fresh tamarind pulp'),
                  IngredientItem(name: '2 cups kangkong leaves or spinach'),
                  IngredientItem(name: '6 cups water'),
                  IngredientItem(name: '1 cup string beans'),
                  IngredientItem(name: '2 pieces green chili peppers'),
                  IngredientItem(name: 'Salt and pepper to taste'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                'Instructions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '1. In a pot, sauté onion and garlic until fragrant.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '2. Add the pork or meat and cook until lightly browned.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '3. Add the sliced tomatoes and cook until softened.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '4. Pour in 6-8 cups of water and bring to a boil.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '5. Add the sinigang mix and stir until dissolved.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '6. Add the sliced radish and eggplant, and cook until tender.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '7. Add the string beans and kangkong, and cook for another 2-3 minutes.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '8. Season with salt and pepper to taste.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '8. Serve hot with rice.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class IngredientItem extends StatelessWidget {
  final String name;

  IngredientItem({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.check, color: Colors.green),
          SizedBox(width: 16),
          Text(name),
        ],
      ),
    );
  }
}
