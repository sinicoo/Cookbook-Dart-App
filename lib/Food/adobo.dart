import 'package:flutter/material.dart';
import 'package:cookbook/favorites_screen.dart';

class AdoboRecipeScreen extends StatefulWidget {
  @override
  _AdoboRecipeScreenState createState() => _AdoboRecipeScreenState();
}

class _AdoboRecipeScreenState extends State<AdoboRecipeScreen> {
  bool _isFavorite = false;
  final List<FavoriteItem> _favorites = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Adobo Recipe'),
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
                    name: 'Adobo Recipe',
                    imagePath: 'images/Filipino/Adobo.jpg',
                  ));
                } else {
                  _favorites.removeWhere(
                      (favorite) => favorite.name == 'Adobo Recipe');
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
                image: AssetImage('images/Filipino/Adobo.jpg'),
                fit: BoxFit.cover,
              )),
              child: Container(padding: EdgeInsets.all(16)),
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
                  IngredientItem(name: '2 lbs chicken'),
                  IngredientItem(name: '1 cup white vinegar'),
                  IngredientItem(name: '1/2 cup soy sauce'),
                  IngredientItem(name: '1 head garlic, minced'),
                  IngredientItem(name: '1 tbsp whole peppercorns'),
                  IngredientItem(name: '3 bay leaves'),
                  IngredientItem(name: '1 cup water'),
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
                '1. In a large pot, combine chicken, vinegar, soy sauce, garlic, peppercorns, and bay leaves.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '2. Bring to a boil and reduce heat to medium. Simmer for 30 minutes.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '3. Add water and simmer for an additional 10 minutes.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '4. Serve hot with rice.',
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
