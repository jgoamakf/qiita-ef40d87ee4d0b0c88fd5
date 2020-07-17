import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:provider/provider.dart';

import 'package:provider_test/example_state.dart';
import 'package:provider_test/example_widget.dart';

void main() {
  testWidgets('TextInput to State', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => ExampleState(),
        child: MaterialApp(
          home: Scaffold(
            body: ExampleWidget(),
          ),
        ),
      ),
    );

    final textFieldFinder = find.byType(TextField);
    final context = tester.element(textFieldFinder);

    expect(context.read<ExampleState>().data, equals(''));

    await tester.enterText(textFieldFinder, 'Hello!');

    expect(context.read<ExampleState>().data, equals('Hello!'));
  });
}
