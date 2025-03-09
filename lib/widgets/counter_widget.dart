import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {

  final int counter;
  final Function()? onPressed;
  final Function()? onLongPressed;
  
  const CounterWidget({
    super.key,
    required this.counter,
    this.onPressed,
    this.onLongPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => onLongPressed?.call(),
      child: Column(
        children: [
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}