import 'package:flutter/material.dart';
import 'package:cookbook/mainpage.dart';

class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage('images/CBlogo.png')),
            const SizedBox(height: 20),
            const Text(
              'Explore Recipes\nAround The World',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Welcome to our recipe app, where excellent meals are made simple and pleasurable. With our broad assortment of recipes, you may discover new cuisines, learn new methods, and improve your cooking skills.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                minimumSize: const Size(150, 50),
              ),
              child: const Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
