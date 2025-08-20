import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryModel{
  final String imagePath;
  final String categoryTitle;
  final Color color;
  final Widget destinationPage;

  const CategoryModel({
    required this.imagePath,
    required this.categoryTitle,
    required this.color,
    required this.destinationPage
});

  void navigateToDestination(BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => destinationPage,)
    );

  }

}