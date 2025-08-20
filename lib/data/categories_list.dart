// List of categories
import 'package:flutter/material.dart';
import 'package:hallo_deutsch/screens/animals_screen.dart';
import 'package:hallo_deutsch/screens/colors_screen.dart';
import 'package:hallo_deutsch/screens/family_members_screen.dart';
import 'package:hallo_deutsch/screens/food_drinks_screen.dart';
import 'package:hallo_deutsch/screens/numbers_screen.dart';

import '../models/category_model.dart';

final List<CategoryModel> categoryList = [
  CategoryModel(
    imagePath: 'assets/images/app_icons/ic_animals.png',
    categoryTitle: 'Animals',
    color: Colors.lightBlue,
    destinationPage: AnimalsScreen()
  ),
  CategoryModel(
    imagePath: 'assets/images/app_icons/ic_colors.png',
    categoryTitle: 'Colors',
    color: Colors.redAccent,
    destinationPage: ColorsScreen()
  ),
  CategoryModel(
    imagePath: 'assets/images/app_icons/ic_family_members.png',
    categoryTitle: 'Family Members',
    color: Colors.green,
    destinationPage: FamilyMembersScreen()
  ),
  CategoryModel(
    imagePath: 'assets/images/app_icons/ic_food_drinks.png',
    categoryTitle: 'Food & Drinks',
    color: Colors.orange,
    destinationPage: FoodDrinksScreen()
  ),
  CategoryModel(
    imagePath: 'assets/images/app_icons/ic_numbers.png',
    categoryTitle: 'Numbers',
    color: Colors.purple,
    destinationPage: NumbersScreen()
  ),
];
