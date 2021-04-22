import 'package:flutter/material.dart';
import 'package:ratting_box/product_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product state demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Jersey Onic",
                description: "Jersey Esports",
                price: 100000,
                image: "assets/onic.jpg"),
            ProductBox(
                name: "Jersey RRQ",
                description: "Jersey Esports",
                price: 80000,
                image: "assets/rrq.jpg"),
            ProductBox(
                name: "Jersey Evos",
                description: "Jersey Esports",
                price: 75000,
                image: "assets/evos.jpg"),
          ],
        ));
  }
}