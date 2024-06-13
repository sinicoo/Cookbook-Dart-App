import 'package:flutter/material.dart';

class ItalianDishes extends StatefulWidget {
  const ItalianDishes({super.key});

  @override
  State<ItalianDishes> createState() => _ItalianDishesState();
}

class _ItalianDishesState extends State<ItalianDishes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: const Text("Italian", style: TextStyle(fontSize: 37.0)),
              actions: <Widget>[
                IconButton(
                  constraints: const BoxConstraints.expand(width: 80),
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(110),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.all(22),
                    child: Text(
                        "Italian dishes are known for its rich and robust flavors. Experience the unique taste, warmth, simplicity, and hospitality of Italian dishes, crafted with fresh, high-quality ingredients that will surely make you savor the flavors!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 13,
                            color: Colors.white)),
                  ))),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 40),
                  Container(
                      height: 80,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('images/Italian/fetuccini.jpg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(320, 80)),
                          child: const Center(
                            child: Text("Fettuccine al Pomodoro",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21)),
                          ))),
                  const SizedBox(height: 30),
                  Container(
                      height: 80,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('images/Italian/parmigiana.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(320, 80)),
                          child: const Center(
                            child: Text("Melanzane alla Parmigiana",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21)),
                          ))),
                  const SizedBox(height: 30),
                  Container(
                      height: 80,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('images/Italian/lasagna.jpg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(320, 80)),
                          child: const Center(
                            child: Text("Lasagne alla Bolognese",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21)),
                          ))),
                  const SizedBox(height: 30),
                  Container(
                      height: 80,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('images/Italian/pizza.jpg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(320, 80)),
                          child: const Center(
                            child: Text("Pizza Margherita",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23)),
                          ))),
                  const SizedBox(height: 30),
                  Container(
                      height: 80,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('images/Italian/panacotta.jpg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(320, 80)),
                          child: const Center(
                            child: Text("Panacotta",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                          ))),
                ],
              ),
            )));
  }
}
