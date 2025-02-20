import 'package:flutter/material.dart';





class PubCard extends StatelessWidget {
  final String title;
  final String address;
  final String avgPrice;
  final String imagePath;


  const PubCard({
    required this.title,
    required this.address,
    required this.avgPrice,
    required this.imagePath,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(imagePath),
        ),
        title: Text(title, textAlign: TextAlign.justify),
        subtitle: Text(address),
        trailing: Text(avgPrice),
      ),
    );
  }
}