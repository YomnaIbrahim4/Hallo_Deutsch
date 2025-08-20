import 'package:flutter/material.dart';
import 'package:hallo_deutsch/data/colors_list.dart';

import '../widgets/screen_widget.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      barTitle: 'Colors',
      itemsList: colorsList,
    );
  }
}
