import 'package:flutter/material.dart';
import 'package:flutter_app_test/MyApp.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app_test/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());

  });
}
