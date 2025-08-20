import 'package:flutter/material.dart';
import 'package:hallo_deutsch/data/food_drinks_list.dart';

import '../widgets/screen_widget.dart';

class FoodDrinksScreen extends StatelessWidget {
  const FoodDrinksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      barTitle: 'Food & Drinks',
      itemsList: foodDrinksList,
    );
  }
}
