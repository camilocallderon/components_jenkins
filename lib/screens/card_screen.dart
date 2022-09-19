import 'package:components_flutter_3/theme/app_theme.dart';
import 'package:flutter/material.dart';

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
          Card(
            elevation: 4,
            key: const Key('card-example-basic'),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.photo_album_outlined,
                    color: AppTheme.primary,
                  ),
                  title: const Text('Card Example'),
                  subtitle: const Text(
                      'Officia ea excepteur consectetur sit. Aliquip elit voluptate incididunt id dolore culpa.'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
