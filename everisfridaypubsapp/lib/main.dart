import 'package:flutter/material.dart';
import 'package:everisfridaypubsapp/pub_card.dart';
import 'package:http/http.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project #1: Everis Friday Pubs (Static)',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
      ),
      home: const EverisFridayApp(title: 'Everis Friday Pubs'),
    );
  }
}

class EverisFridayApp extends StatefulWidget {
  const EverisFridayApp({super.key, required this.title});
  final String title;

  @override
  State<EverisFridayApp> createState() => EverisFridayState();
}

class EverisFridayState extends State<EverisFridayApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          children: <Widget>[
            PubCard(
              title: "Italy", 
              address: "123456789", 
              avgPrice: "10", 
              imagePath: "assets/images/download.jpeg"
            ),
            PubCard(
              title: "Spain", 
              address: "987654321", 
              avgPrice: "15", 
              imagePath: "assets/images/download2.jpeg"
            )
          ],
        ),
      ),
    );
  }
}
