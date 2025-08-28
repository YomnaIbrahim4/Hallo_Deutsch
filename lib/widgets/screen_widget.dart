import 'package:flutter/material.dart';
import 'package:hallo_deutsch/models/item_model.dart';

import '../data/animals_list.dart';
import 'appbar_widget.dart';
import 'item_widget.dart';

class ScreenWidget extends StatelessWidget {
  final String barTitle;
  final List<ItemModel> itemsList;
  const ScreenWidget({super.key,required this.barTitle,required this.itemsList});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            title:AppBarWidget(title: barTitle)
        ),
        body: ListView.builder(
          itemCount: itemsList.length,
          itemBuilder: (_, index) => ItemWidget(itemModel: itemsList[index]),
        )
    );
  }
}
