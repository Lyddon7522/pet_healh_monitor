import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_healh_monitor/home_page.dart';

void main() {
  group('Home Page Layout Tests', () {

    Future<void> _verifyLayoutElements(WidgetTester tester) async {
      print('_verifyLayoutElements');
      expect(find.byIcon(Icons.home), findsOneWidget);
      expect(find.byIcon(Icons.favorite), findsOneWidget);
      expect(find.byIcon(Icons.insert_chart_outlined_rounded), findsOneWidget);
      expect(find.byIcon(Icons.pets), findsOneWidget);
    }
    testWidgets('Home Screen Widget Tester', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(home: HomePage()));
      await _verifyLayoutElements(tester);
      expect(find.text('Pet Health'), findsOneWidget);
    });
  });
}
