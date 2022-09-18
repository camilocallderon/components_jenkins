import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: const Text('Nombre de Ruta'),
                trailing: const Icon(Icons.access_time_filled_outlined),
                onTap: () {},
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 10),
    );
  }
}
