import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:note_keeper_new/main.dart';
import 'package:note_keeper_new/screens/Phase_1/day4_screen.dart';

void main() {
  testWidgets('login screen navigates to home screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Welcome Back'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, 'Login'));
    await tester.pumpAndSettle();

    expect(find.text('Welcome Sai'), findsOneWidget);
  });

  testWidgets('day 4 screen lays out without render errors', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TestApp(child: Day4Screen()));

    expect(find.text('Sai Kiran'), findsOneWidget);
    expect(find.text('Follow'), findsOneWidget);
    expect(find.text('Message'), findsOneWidget);
  });
}

class TestApp extends StatelessWidget {
  const TestApp({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: child);
  }
}
