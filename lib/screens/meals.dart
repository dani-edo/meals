import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    Key? key,
    required this.title,
    required this.meals,
  }) : super(key: key);

  final String title;
  final List<Meal> meals;

// Scaffold selalu dipakai di screen widget
  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length, // harus diisi jika menggunakan ListView
      itemBuilder: (ctx, index) => Text(
        meals[index].title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );

    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'No meal found',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Try selecting a different category',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
