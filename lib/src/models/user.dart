import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User {
  final String id;
  final String name;
  final String email;

  User(this.name, this.email, this.id);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        id = json['id'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'id': id
      };
}