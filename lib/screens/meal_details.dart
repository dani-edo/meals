import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  MealDetailsScreen({Key? key, required this.meal}) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    Widget content = Image.network(
      meal.imageUrl,
      height: 300,
      width: double.infinity,
      fit: BoxFit.cover,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: content,
    );
  }
}
