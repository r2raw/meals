import 'package:flutter/material.dart';

class Category {
  const Category({required this.id, required this.title, this.color = Colors.red});
  final String id;
  final Color color;
  final String title;
}
