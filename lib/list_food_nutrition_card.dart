import 'package:flutter/material.dart';

class ListFoodNutritionCard extends StatelessWidget {
  const ListFoodNutritionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FoodNutritionCard("Fried eggs", 378, "100g", 12, 17, 17),
        SizedBox(height: 6),
        FoodNutritionCard("Mug of coffee", 74, "450ml", 1, 3, 2),
        SizedBox(height: 6),
        FoodNutritionCard("Mug of coffee", 74, "450ml", 1, 3, 2),
        SizedBox(height: 6),
        FoodNutritionCard("Mug of coffee", 74, "450ml", 1, 3, 2),
        SizedBox(height: 6),
        FoodNutritionCard("Mug of coffee", 74, "450ml", 1, 3, 2),
        SizedBox(height: 6),
        FoodNutritionCard("Mug of coffee", 74, "450ml", 1, 3, 2),
        SizedBox(height: 6),
        FoodNutritionCard("Mug of coffee", 74, "450ml", 1, 3, 2),
        SizedBox(height: 6),
        FoodNutritionCard("Mug of coffee", 74, "450ml", 1, 3, 2),
        SizedBox(height: 6),
        FoodNutritionCard("Mug of coffee", 74, "450ml", 1, 3, 2),
        SizedBox(height: 6),
      ],
    );
  }
}

Widget FoodNutritionCard(String name, int val, String text, int protein, int fat, int carbs) {
  return Container(
    width: double.infinity,
    height: 190,
    color: Colors.grey[100],
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          header(name),
          SizedBox(height: 10),
          body(val, text),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              build_box("Protein", protein, Colors.purple),
              build_box("Fat", fat, Colors.orange),
              build_box("Carbs", carbs, Colors.black),
            ],
          )
        ],
      ),
    ),
  );
}


// build
Widget build_box(String name, int val, Color color) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      SizedBox(height: 6),
      Row(
        children: [
          Container(
            width: 15,
            height: 15,
            color: color,
          ),
          SizedBox(width: 8),
          Text(
            "${val}g",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
    ],
  );
}

Widget header(String name) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      Icon(
        Icons.edit_outlined,
        size: 20,
      ),
    ],
  );
}

Widget body(int val, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            "${val}g",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          SizedBox(width: 3),
          Text(
            "kcal",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
          ),
        ],
      ),
      Text(
        text,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.normal,
          fontSize: 16,
        ),
      ),
    ],
  );
}
