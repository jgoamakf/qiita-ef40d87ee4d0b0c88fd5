import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'example_state.dart';

class ExampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (text) {
            context.read<ExampleState>().setData(text);
          },
        ),
        Text('${context.watch<ExampleState>().data}'),
      ],
    );
  }
}
