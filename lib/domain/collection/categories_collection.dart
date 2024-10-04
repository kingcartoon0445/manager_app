// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';

part 'categories_collection.g.dart';

@collection
class CategoriesCollection {
  Id id = Isar.autoIncrement;
  String? name;
  String? imagePath;

  CategoriesCollection({
    this.name,
    this.imagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imagePath': imagePath,
    };
  }

  factory CategoriesCollection.fromMap(Map<String, dynamic> map) {
    return CategoriesCollection(
      name: map['name'] as String?,
      imagePath: map['imagePath'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoriesCollection.fromJson(String source) =>
      CategoriesCollection.fromMap(json.decode(source) as Map<String, dynamic>);
}
