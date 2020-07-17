import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:provider/provider.dart';

import 'package:provider_test/example_state.dart';
import 'package:provider_test/example_widget.dart';

void main() {
  testWidgets('State to Text', (WidgetTester tester) async {
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

    final textFinder = find.byType(Text);
    final context = tester.element(textFinder);

    expect(tester.firstWidget<Text>(textFinder).data, equals(''));

    context.read<ExampleState>().setData('Bye!');
    await tester.pump();

    expect(tester.firstWidget<Text>(textFinder).data, equals('Bye!'));
  });
}
