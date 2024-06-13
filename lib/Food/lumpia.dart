import 'package:flutter/material.dart';
import 'package:cookbook/favorites_screen.dart';

class LumpiaRecipeScreen extends StatefulWidget {
  @override
  _LumpiaRecipScreenState createState() => _LumpiaRecipScreenState();
}

class _LumpiaRecipScreenState extends State<LumpiaRecipeScreen> {
  bool _isFavorite = false;
  final List<FavoriteItem> _favorites = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Lumpia Recipe'),
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
                    name: 'Lumpia Recipe',
                    imagePath: 'images/Filipino/Lumpia.jpg',
                  ));
                } else {
                  _favorites.removeWhere(
                      (favorite) => favorite.name == 'Lumpia Recipe');
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
                image: AssetImage('images/Filipino/Lumpia.jpg'),
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
                  IngredientItem(name: '1 tablespoon vegetable oil'),
                  IngredientItem(name: '1 pound ground pork'),
                  IngredientItem(name: '1/2 cup chopped onion'),
                  IngredientItem(name: '2 cloves garlic, crushed'),
                  IngredientItem(name: '1/2 cup minced carrots'),
                  IngredientItem(name: '1/2 cup chopped green onions'),
                  IngredientItem(name: '1/2  cup thinly sliced green cabbage'),
                  IngredientItem(name: '1 teaspoon ground black pepper'),
                  IngredientItem(
                      name: '2 tablespoons chopped fresh cilantro (Optional)'),
                  IngredientItem(name: '1 teaspoon salt'),
                  IngredientItem(name: '1 teaspoon garlic powder'),
                  IngredientItem(name: '1 teaspoon soy sauce'),
                  IngredientItem(name: '30 lumpia wrappers'),
                  IngredientItem(
                      name: '2 cups vegetable oil for frying, or as needed'),
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
                '1. Heat 1 tablespoon vegetable oil in a wok or large skillet over high heat.\n Add pork; cook and stir until crumbly and no pink is showing,\n 5 to 7 minutes. Remove pork from the pan and set aside.\n Drain grease from the pan, leaving just a thin coating.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '2. Add onion and garlic to the pan; cook and stir until fragrant, about 2 minutes.\n Stir in the cooked pork, carrots, green onions, cabbage, and cilantro. Season with pepper, salt, garlic powder, and soy sauce.\n Remove from the heat, and set aside until cool enough to handle, about 5 minutes.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '3. Assemble lumpia: Place 3 heaping tablespoons of filling diagonally near one corner of a lumpia wrapper, leaving a 1 1/2 inch space at both ends.\n Fold the side along the length of the filling over the filling, tuck in both ends, and roll neatly and tightly to close.\n Moisten the other side of the wrapper with water to seal the edge.\n Transfer to a plate and cover with plastic wrap to retain moisture.\n Repeat to assemble remaining lumpia.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                '4.Heat 1/2 inch vegetable oil in a heavy skillet over medium heat for 5 minutes.\n \n5. Slide 3 to 4 lumpia into the hot oil, making sure the seams are facing down. Fry, turning occasionally,\n until all sides are golden brown, 1 to 2 minutes. Transfer to a paper towel-lined plate to drain.\n Repeat to fry remaining lumpia. Serve immediately.',
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
