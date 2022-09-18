import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'listview1': (BuildContext context) => const ListView1Screen(),
        'listview2': (BuildContext context) => const ListView2Screen(),
      },
    );
  }
}
