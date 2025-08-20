import 'package:flutter/material.dart';
import 'package:hallo_deutsch/data/categories_list.dart';
import 'package:hallo_deutsch/models/category_model.dart';
import 'package:hallo_deutsch/widgets/appbar_widget.dart';
import 'package:hallo_deutsch/widgets/category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarWidget(title: "Hallo Deutsch"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return CategoryWidget(category: categoryList[index]);
            },)


      ),
    );
  }
}
