import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((e) => ListTile(
                      title: Text(e),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ))
                .toList(),
          ],
        ));
  }
}
