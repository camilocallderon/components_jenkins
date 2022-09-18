import 'package:flutter/material.dart';

import 'package:components_flutter_3/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptionModel>[
    MenuOptionModel(
      route: 'home',
      icons: Icons.home_work_outlined,
      name: 'Home Screen',
      screen: const HomeScreen(),
    ),
    MenuOptionModel(
      route: 'listview1',
      icons: Icons.list_alt,
      name: 'ListView Tipo 1',
      screen: const ListView1Screen(),
    ),
    MenuOptionModel(
      route: 'listview2',
      icons: Icons.list,
      name: 'ListView Tipo 2',
      screen: const ListView2Screen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ListView1Screen(),
    );
  }
}
