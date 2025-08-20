import 'package:flutter/material.dart';
import 'package:hallo_deutsch/data/family_members_list.dart';

import '../widgets/screen_widget.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      barTitle: 'Family Members',
      itemsList: familyMembersList,
    );
  }
}
