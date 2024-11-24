import 'package:flutter/material.dart';
import 'package:app_core_app/count_notifier.dart';

class StatelessCounterPage extends StatelessWidget {
  const StatelessCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CountNotifier notifier = CountNotifier();

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              ValueListenableBuilder<int>(
                valueListenable: notifier.counter,
                builder: (context, counter, child) {
                  return Text(
                    '$counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                },
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: notifier.increment,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: FloatingActionButton(
              onPressed: notifier.reset,
              tooltip: 'Reset',
              child: const Icon(Icons.refresh),
            ),
          ),
        ],
      ),
    );
  }
}