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
    MenuOptionModel(
      route: 'card',
      icons: Icons.card_membership_sharp,
      name: 'Card',
      screen: const CardScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ListView1Screen(),
    );
  }
}
