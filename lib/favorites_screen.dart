import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  final List<FavoriteItem> favorites;

  FavoritesScreen({required this.favorites});

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class FavoriteItem {
  final String name;
  final String imagePath;

  FavoriteItem({
    required this.name,
    required this.imagePath,
  });
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Favorites'),
      ),
      body: widget.favorites.isEmpty
          ? Center(child: Text('No Favorites Added Yet!'))
          : ListView.builder(
              itemCount: widget.favorites.length,
              itemBuilder: (BuildContext context, int index) {
                final favoriteItem = widget.favorites[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(favoriteItem.imagePath),
                  ),
                  title: Text(favoriteItem.name),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        widget.favorites.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
    );
  }
}
