import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'example_state.dart';
import 'example_widget.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ExampleState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Test',
      home: Scaffold(
        body: ExampleWidget(),
      ),
    );
  }
}
