import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task28/screen/food_detail_screen.dart';


void main() {
  testWidgets('Judul Detail Food Screen', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FoodDetailScreen(),
      ),
    );

    //await tester.pumpAndSettle(const Duration(seconds: 3));
    expect(find.text('Detail Food'), findsOneWidget);
  });
}