import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardTypeOne extends StatelessWidget {
  final String title;
  final String bodyText;
  final String leftButtonLabel;
  final String rightButtonLabel;
  final VoidCallback onPressLeftButton;
  final VoidCallback onPressRightButton;

  const CustomCardTypeOne({
    required this.onPressLeftButton,
    required this.onPressRightButton,
    required this.leftButtonLabel,
    required this.rightButtonLabel,
    required this.bodyText,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      key: const Key('card-example-basic'),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text(title),
            subtitle: Text(bodyText),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: onPressLeftButton,
                  child: Text(leftButtonLabel),
                ),
                TextButton(
                  onPressed: onPressRightButton,
                  child: Text(rightButtonLabel),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
