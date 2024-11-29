import 'package:feature_counter/counter_page.dart';
import 'package:feature_counter/stateless_counter_page.dart';
import 'package:flutter/material.dart';

/// A stateless widget that provides navigation to CounterPage and 
/// StatelessCounterPage
class CounterRootNavigation extends StatelessWidget {
  /// Constructor for CounterRootNavigation
  const CounterRootNavigation({super.key});

  /// Builds the widget tree for this widget
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Button to navigate to CounterPage
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<CounterPage>(
                  builder: (context) => const CounterPage(),
                ),
              );
            },
            child: const Text('Go to CounterPage'),
          ),
          // Button to navigate to StatelessCounterPage
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<StatelessCounterPage>(
                  builder: (context) => const StatelessCounterPage(),
                ),
              );
            },
            child: const Text('Go to StatelessCounterPage'),
          ),
        ],
      ),
    );
  }
}
