import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:components_flutter_3/main.dart';

void main() {
  group('Home Page', () {
    testWidgets('Find Home Screen View', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      expect(find.text('Home Screen'), findsOneWidget);
      expect(find.text('Hello World 1'), findsNothing);
    });
  });
  group('Card Page', () {
    testWidgets('Find Card', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.text('Card'));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('card-example-basic')), findsOneWidget);
      expect(find.byType(TextButton), findsNWidgets(2));
    });
  });
}
