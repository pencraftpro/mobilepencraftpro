import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pencraftpro/main.dart';

void main() {
  testWidgets('Shows Get Started button and tagline on MyHomePage', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: MyHomePage(title: 'PenCraft Pro')),
    );

    await tester.pumpAndSettle();

    // Check "Get Started" button
    expect(find.text('Get Started'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Check app tagline
    expect(find.text('"Write It. Draw It. Own It."'), findsOneWidget);
  });
}
