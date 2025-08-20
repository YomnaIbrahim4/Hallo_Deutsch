import 'package:flutter/material.dart';
import 'package:hallo_deutsch/data/numbers_list.dart';

import '../widgets/screen_widget.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      barTitle: 'Numbers',
      itemsList: numbersList,
    );
  }
}

