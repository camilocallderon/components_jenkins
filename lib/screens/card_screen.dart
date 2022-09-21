import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CustomCardTypeOne(
            title: 'Card Example',
            leftButtonLabel: 'Cancel',
            rightButtonLabel: 'Ok',
            bodyText:
                'Officia ea excepteur consectetur sit. Aliquip elit voluptate incididunt id dolore culpa.',
            onPressLeftButton: () {},
            onPressRightButton: () {},
          ),
        ],
      ),
    );
  }
}
