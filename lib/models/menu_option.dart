import 'package:flutter/material.dart' show IconData, Widget;

class MenuOptionModel {
  final String route;
  final IconData icons;
  final String name;
  final Widget screen;

  MenuOptionModel({
    required this.route,
    required this.icons,
    required this.name,
    required this.screen,
  });
}
