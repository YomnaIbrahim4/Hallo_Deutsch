import 'package:flutter/material.dart';
import 'package:hallo_deutsch/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel category;
  CategoryWidget({
    super.key,
    required this.category,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
          onPressed: (){
            category.navigateToDestination(context);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: category.color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10)
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image(image: AssetImage(category.imagePath)),
                Text(
                  category.categoryTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
