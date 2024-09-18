import 'package:counter_provider/provider/counter.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<Counter>();
    return Column(
      children: [
        Image.network(
            'https://www.istore.kg/media/products/iphone-15-pro-finish-select-202309-6-1inch-naturaltitanium.webp'),
        const Text("iPhone 15 Pro"),
        Text('${counter.count}'),
        counterButtons(counter: counter),
        Text('Итого: ${counter.count * 990} \$'),
      ],
    );
  }
}

Widget counterButtons({required Counter counter}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: () => counter.increment(),
        icon: const Icon(Icons.add),
      ),
      IconButton(
        onPressed: () => counter.decrement(),
        icon: const Icon(Icons.remove),
      ),
    ],
  );
}
