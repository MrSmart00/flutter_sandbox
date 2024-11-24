import 'package:feature_counter/counter_page.dart';
import 'package:feature_counter/stateless_counter_page.dart';
import 'package:flutter/material.dart';

class CounterRootNavigation extends StatelessWidget {
  const CounterRootNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CounterPage()),
              );
            },
            child: const Text('Go to CounterPage'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StatelessCounterPage()),
              );
            },
            child: const Text('Go to StatelessCounterPage'),
          ),
        ],
      ),
    );
  }
}
