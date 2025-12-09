import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';

// Simple Cafeteria Item Model
part 'cafeteria_item.g.dart';

@HiveType(typeId: 2)
class CafeteriaItem extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String description;

  @HiveField(3)
  double price;

  @HiveField(4)
  String category;

  @HiveField(5)
  bool isAvailable;

  CafeteriaItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    this.isAvailable = true,
  });
}