import 'package:flutter_test/flutter_test.dart';
import 'package:project1/screens/signin.dart';
import 'login_screen_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets(
    'Judul Login Screen',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SignIn(),
        ),
      );
      expect(find.text('Login Screen'), findsOneWidget);
    },
  );
}
