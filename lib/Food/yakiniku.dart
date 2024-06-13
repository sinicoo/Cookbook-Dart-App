import 'package:flutter/material.dart';
import 'package:cookbook/favorites_screen.dart';

class YakinikuRecipeScreen extends StatefulWidget {
  @override
  _YakinikuRecipeScreenState createState() => _YakinikuRecipeScreenState();
}

class _YakinikuRecipeScreenState extends State<YakinikuRecipeScreen> {
  bool _isFavorite = false;
  final List<FavoriteItem> _favorites = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Yakiniku Recipe'),
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
                    name: 'Yakiniku Recipe',
                    imagePath: 'images/Japanese/yakiniku.png',
                  ));
                } else {
                  _favorites.removeWhere(
                      (favorite) => favorite.name == 'Yakiniku Recipe');
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
                image: AssetImage('images/Japanese/yakiniku.png'),
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
                  IngredientItem(
                      name:
                          '1 pound of thinly sliced beef (preferably rib-eye or sirloin)'),
                  IngredientItem(name: '1/4 cup soy sauce'),
                  IngredientItem(name: '2 tablespoons sugar'),
                  IngredientItem(name: '2 tablespoons sake'),
                  IngredientItem(name: '2 tablespoons mirin'),
                  IngredientItem(name: '2 cloves of garlic, minced'),
                  IngredientItem(name: '1 tablespoon sesame oil'),
                  IngredientItem(name: 'Salt and pepper'),
                  IngredientItem(
                      name:
                          'Vegetables of your choice(onions or bell peppers)'),
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
                '1. Start by preparing the marinade. In a bowl, whisk together soy sauce, sugar, sake, mirin, minced garlic, and sesame oil. Set aside.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '2. Cut the beef into bite-sized pieces and season with salt and pepper.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '3. Add the beef to the marinade and let it sit for at least 30 minutes or up to 2 hours in the refrigerator. The longer the beef marinates, the more flavorful it will be.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '4. Preheat your grill or grill pan to high heat.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '5. Remove the beef from the marinade and grill it for 1-2 minutes on each side until it is cooked to your desired doneness.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '6. While the beef is cooking, grill your vegetables until they are tender and slightly charred.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '7. Once the beef and vegetables are cooked, transfer them to a platter and serve with rice and dipping sauce (such as yakiniku sauce or ponzu sauce).',
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
