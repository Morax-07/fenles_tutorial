import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pubs_application/pub_card.dart';
import 'package:pubs_application/models/pubs.dart';
import 'package:pubs_application/models/pub_picture.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart';





void main() => runApp(EverisFridayApp());


class EverisFridayApp extends StatefulWidget {
  const EverisFridayApp({Key? key}) : super(key: key);


  @override
  State<EverisFridayApp> createState() => EverisFridayState();
}

class EverisFridayState extends State<EverisFridayApp> {
  final List<Pubs> _listPubs = <Pubs>[];
  late Future<String> futurePubs; 

  @override
  void initState() {
    super.initState();
    futurePubs = getPubs(_listPubs);
  }

  Future<String> getPubs(_listPubs) async {
    final Response response = await get(Uri.parse('http://localhost:1337/api/pubs'));

    if (response.statusCode == 200) {
      List<dynamic> pubsListRaw = jsonDecode(response.body);
      for (var i = 0; i < pubsListRaw.length; i++) {
          _listPubs.add(Pubs.fromJson(pubsListRaw[i]));
      }

      return "Success!";
    } else {
      throw Exception('Failed to load data');
    }
  }

  Widget _buildPubs() {
    return FutureBuilder(
      future: futurePubs, 
      builder: (context, projectSnap) {
        if(projectSnap.connectionState == ConnectionState.none && projectSnap.hasData == null) {
          return Container();
        }

        return ListView.builder(
          itemCount: _listPubs.length,
          itemBuilder: (context, index) {
            return PubCard(pub: _listPubs[index]);
          },
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Everis Friday Pubs",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Everis Friday Pubs"),
          backgroundColor: Color(0xff9aae04),
        ),
        body: Center(
          child: _buildPubs(),
        ),
      ),
    );
  }
}
