import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:counter/main.dart';

void main() {
  testWidgets('Navigate to LoginScreen when login button is pressed', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    ));

    await tester.tap(find.byIcon(Icons.login));
    await tester.pumpAndSettle();

    expect(find.text('Login'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}

