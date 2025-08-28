import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 50,
              child: Image(image:AssetImage('assets/images/app_icons/ic_german.png'),)),
          Text(
            title,
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          Container(
              height: 50,
              child: Image(image:AssetImage('assets/images/app_icons/ic_german.png'),)),
        ],
      ),
    );
  }
}
