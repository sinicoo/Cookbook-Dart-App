import 'package:flutter/material.dart';
import 'package:cookbook/favorites_screen.dart';

class PancitRecipeScreen extends StatefulWidget {
  @override
  _PancitRecipeScreenState createState() => _PancitRecipeScreenState();
}

class _PancitRecipeScreenState extends State<PancitRecipeScreen> {
  bool _isFavorite = false;
  final List<FavoriteItem> _favorites = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Pancit Recipe'),
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
                    name: 'Pancit Recipe',
                    imagePath: 'images/Filipino/Pancit.jpg',
                  ));
                } else {
                  _favorites.removeWhere(
                      (favorite) => favorite.name == 'Pancit Recipe');
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
                image: AssetImage('images/Filipino/Pancit.jpg'),
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
                  IngredientItem(name: '1/2 lb pancit bihon'),
                  IngredientItem(name: '1 piece Knorr Shrimp Cube'),
                  IngredientItem(
                      name: '1/2 lb. chicken thigh boiled and shredded'),
                  IngredientItem(
                      name: '8 pieces shrimp shell and head removed'),
                  IngredientItem(name: '1/2 piece small cabbage chopped'),
                  IngredientItem(name: '3/4 cup carrot julienne'),
                  IngredientItem(name: '3 pieces stalks celery chopped'),
                  IngredientItem(name: '3/4 cup sliced long green beans'),
                  IngredientItem(name: '1 piece onion sliced into thin pieces'),
                  IngredientItem(name: '5 tablespoons dark soy sauce'),
                  IngredientItem(name: '2 pieces Chinese sausage chopped'),
                  IngredientItem(name: '5 cloves garlic crushed'),
                  IngredientItem(name: '1/2 cup chopped parsley'),
                  IngredientItem(name: '1/4 teaspoon ground black pepper'),
                  IngredientItem(name: '4 tablespoons cooking oil'),
                  IngredientItem(name: '4 cups water'),
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
                '1. Soak pancit bihon in water for 8 to 10 minutes. Drain water and set noodles aside.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '2. Heat oil in a pot. Pan-fry shrimp for 1 minute per side. Remove and set aside.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '3. Saute onion and garlic using remaining cooking oil. Add Chinese sausage. Cook for 1 minute.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '4. Add shredded chicken and celery. Cook for 1 to 2 minutes.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '5. Add Knorr Shrimp Cube. Crush the cube and continue to saute for 30 seconds.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '6. Pour-in soy sauce. Add parsley, carrot, green beans, and cabbage. Stir. Cover and cook for 3 minutes using medium heat.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '7. Add pancit. Toss ingredients using a kitchen tong.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '8. Season with ground black pepper and add the shrimp back. Toss until well blended. Cover the pot and continue to cook for 2 to 5 minutes between low to medium heat.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '9. Transfer to a serving plate. Serve. Share and enjoy!',
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
