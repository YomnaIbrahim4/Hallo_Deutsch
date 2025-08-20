import 'package:flutter/material.dart';
import 'package:hallo_deutsch/data/animals_list.dart';
import 'package:hallo_deutsch/widgets/screen_widget.dart';

class AnimalsScreen extends StatelessWidget {
  const AnimalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      barTitle: 'Animals',
      itemsList: animalsList,
    );
  }
}
