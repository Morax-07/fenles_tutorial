import 'package:flutter/material.dart';
import "package:pubs_application/models/pubs.dart";





class PubCard extends StatelessWidget {
  final Pubs pub;


  const PubCard({required this.pub});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.transparent,
          backgroundImage: NetworkImage("http://localhost:1337${pub.picture.url}"),
        ),
        title: Text(pub.name, textAlign: TextAlign.justify),
        subtitle: Text(pub.address),
        trailing: Text(pub.avgPrice.toString()),
      ),
    );
  }
}