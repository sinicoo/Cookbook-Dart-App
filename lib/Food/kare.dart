import 'package:flutter/material.dart';
import 'package:cookbook/favorites_screen.dart';

class KareKareRecipeScreen extends StatefulWidget {
  @override
  _KareKareRecipeScreen createState() => _KareKareRecipeScreen();
}

class _KareKareRecipeScreen extends State<KareKareRecipeScreen> {
  bool _isFavorite = false;
  final List<FavoriteItem> _favorites = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Kare-kare Recipe'),
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
                    name: 'Kare-kare Recipe',
                    imagePath: 'images/Filipino/Kare-kare.jpg',
                  ));
                } else {
                  _favorites.removeWhere(
                      (favorite) => favorite.name == 'Kare-kare Recipe');
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
                image: AssetImage('images/Filipino/Kare-kare.jpg'),
                fit: BoxFit.cover,
              )),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                ),
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
                  IngredientItem(name: '3 lbs oxtail cut'),
                  IngredientItem(name: '1 piece small banana flower bud'),
                  IngredientItem(name: '1 bundle pechay or bok choy'),
                  IngredientItem(name: '1 bundle string beans'),
                  IngredientItem(name: '4 pieces eggplants'),
                  IngredientItem(name: '1 cup ground peanuts'),
                  IngredientItem(name: '1/2 cup peanut butter'),
                  IngredientItem(name: '1/2 cup shrimp paste'),
                  IngredientItem(name: '34 Ounces water'),
                  IngredientItem(name: '1/2 cup toasted ground rice'),
                  IngredientItem(name: '1 tbsp garlic'),
                  IngredientItem(name: '1 piece onion'),
                  IngredientItem(name: 'salt and pepper'),
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
                '1. In a large pot, bring the water to a boil.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '2. Put in the oxtail followed by the onions and simmer for 2.5 to 3 hrs or until tender (35 minutes if using a pressure cooker).',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '3. Once the meat is tender, add the ground peanuts, peanut butter, and coloring (water from the annatto seed mixture) and simmer for 5 to 7 minutes',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '4. Add the toasted ground rice and simmer for 5 minutes\n \n5. On a separate pan, saute the garlic then add the banana flower, eggplant, and string beans and cook for 5 minutes\n \n6. Transfer the cooked vegetables to the large pot (where the rest of the ingredients are)\n \n7.Add salt and pepper to taste\n \n8.Serve hot with shrimp paste. Enjoy! ',
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
