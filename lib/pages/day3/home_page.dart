import 'package:flutter/material.dart';
import 'package:flutter_batch_5/widgets/counter_widget.dart';
import 'package:flutter_batch_5/widgets/sample_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: <Widget>[
            CounterWidget(
              counter: _counter,
              onPressed: _incrementCounter,
              onLongPressed: _incrementCounter,
            ),
            SampleWidget(
              name: "John Doe",
              day: "3",
            ),
            Wrap(
              spacing: 16,
              children: [
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Elevated Button")
                ),
                FilledButton(
                  onPressed: () {}, 
                  child: Text("Filled Button")
                ),
                FilledButton.tonal(
                  onPressed: () {}, 
                  child: Text("Tonal Button")
                ),
                OutlinedButton(
                  onPressed: () {}, 
                  child: Text("Outlined Button")
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
