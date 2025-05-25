// test/main_widget_test.dart
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pencraftpro/main.dart'; // adjust kung nasa ibang folder

void main() {
  testWidgets('PenCraft Pro shows welcome screen with Get Started button', (
    WidgetTester tester,
  ) async {
    // Render app
    await tester.pumpWidget(const MyApp());

    // Wait for frames to settle
    await tester.pumpAndSettle();

    // Expect to find "Get Started" button on /welcome
    expect(find.text('Get Started'), findsOneWidget);
  });
}
