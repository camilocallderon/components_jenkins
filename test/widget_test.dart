import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:components_flutter_3/main.dart';

void main() {
  testWidgets('Find Home Screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('Home Screen'), findsOneWidget);
    expect(find.text('Hello World 1'), findsNothing);

    await tester.tap(find.text('Card'));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('card-example-basic')), findsOneWidget);
    expect(find.byType(TextButton), findsNWidgets(2));

    ///expect(find.text('1'), findsNothing);
    ///
    ///// Tap the '+' icon and trigger a frame.
    ///await tester.tap(find.byIcon(Icons.add));
    ///await tester.pump();
    ///
    ///// Verify that our counter has incremented.
    ///expect(find.text('0'), findsNothing);
    ///expect(find.text('1'), findsOneWidget);
  });
}
