import 'package:flutter/material.dart';
import 'package:flutterstarter/core/viewmodels/counter_viewmodel.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterViewModel()..loadData(),
      builder: (context, _) => Consumer<CounterViewModel>(
        builder: (context, model, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Counter Screen'),
            ),
            body: Provider(
              create: (context) => CounterViewModel(),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '${model.counter}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    model.increment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 20.0),
                FloatingActionButton(
                  onPressed: () {
                    model.decrement();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
