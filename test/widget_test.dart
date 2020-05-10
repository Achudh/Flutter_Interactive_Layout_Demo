// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:agnostica/main.dart';

void main (){
  testWidgets("Example App smoke test", (WidgetTester tester) async{

    await tester.pumpWidget(new MyApp());

    expect(find.text('Oeschinen Lake Campground'), findsOneWidget);
    expect(find.text('ROUTE'), findsOneWidget);

    expect(find.byIcon(Icons.star), findsOneWidget);
    expect(find.text('41'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.star));
    await tester.pump();

    expect(find.byIcon(Icons.star_border), findsOneWidget);
    expect(find.text('40'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.star_border));
    await tester.pump();

    expect(find.byIcon(Icons.star), findsOneWidget);
    expect(find.text('41'), findsOneWidget);
  });
}