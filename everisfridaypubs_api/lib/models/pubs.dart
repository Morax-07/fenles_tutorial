import 'package:json_annotation/json_annotation.dart';
import 'package:pubs_application/models/pub_picture.dart';
part 'pubs.g.dart';


@JsonSerializable(explicitToJson: true)
class Pubs {
  final int id;
  final String name;
  final String address;
  final PubPicture picture;
  final int avgPrice;
  
  Pubs({
    required this.id,
    required this.name,
    required this.address,
    required this.picture,
    required this.avgPrice,
  });

  factory Pubs.fromJson(Map<String, dynamic> json) => _$PubsFromJson(json);

  Map<String, dynamic> toJson() => _$PubsToJson(this);
}