import 'package:basic_widget/app_bar.dart';
import 'package:flutter/material.dart';

import 'bulid_card.dart';
import 'list_food_nutrition_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Listkey = GlobalKey<titleState>();

    return Scaffold(
      appBar: AppBar(
        title: title(key: Listkey),
        centerTitle: true,
        actions: [action()],
        leading: GestureDetector(
          onTap: () {
            Listkey.currentState?.change();
          },
          child: Leading(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            children: [
              SizedBox(height: 20),
              const BulidColumn(),
              SizedBox(height: 20),
              const ListFoodNutritionCard(),
            ],
          ),
        ),
      ),
    );
  }
}
