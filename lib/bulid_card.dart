import 'package:flutter/material.dart';

import 'build_nutrient.dart';

class Normal extends StatelessWidget {
  const Normal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 110,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        "Normal",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

class Kcal extends StatelessWidget {
  const Kcal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          "452",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 44,
          ),
        ),
        const SizedBox(width: 3),
        Text(
          "kcal",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class icon extends StatelessWidget {
  const icon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.add,
      size: 70,
      color: Color.fromRGBO(60, 67, 65, 0.859),
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Breakfast",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        Text(
          "Today",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class BulidColumn extends StatelessWidget {
  const BulidColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Content(),
            icon(),
          ],
        ),
        const SizedBox(height: 15),
        const Divider(
          thickness: 1.8,
          color: Color.fromRGBO(91, 103, 102, 0.37),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Kcal(),
            Normal(),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BuildNutrient(name: "Protein",val: 13, max: 80,color: Colors.purple),
            BuildNutrient(name: "Fat",val: 20,max: 60,color: Colors.orange),
            BuildNutrient(name: "Carbs",val: 79,max: 200,color: Colors.black),
          ],
        ),
      ],
    );
  }
}