import 'package:flutter/material.dart';
import 'package:cookbook/exploreMenu.dart';
import 'package:cookbook/Food/adobo.dart';
import 'package:cookbook/Food/sinigang.dart';
import 'package:cookbook/Food/pancit.dart';
import 'package:cookbook/favorites_screen.dart';

class MainPage extends StatelessWidget {
  final searchController = TextEditingController();
  final List<FavoriteItem> _favoriteItems = [];

  @override
  Widget build(BuildContext context) {
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
                  color: const Color(0xffff0000),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              FavoritesScreen(favorites: _favoriteItems)),
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
                  color: const Color(0xff080808),
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 550,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/food3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xa5252525),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Take your taste buds on a \njourney with our handpicked \ncollection of delicious \nrecipes. Choose your favorite \nand lets get cooking!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 10,
                  child: Row(
                    children: [
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExploreMenuPage()),
                          );
                        },
                        child: const Text(
                          'Explore Menu',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: const [
                SizedBox(height: 20),
                Text(
                  'Food for Today!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '“People who love to eat are always the best people.”\n- Julia Child',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/bfood1.jpg'),
                ),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/bfood2.jpg'),
                ),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/bfood3.PNG'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
