import 'package:flutter/material.dart';

class SomethingPage extends StatelessWidget {
  const SomethingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Something Page'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.blueAccent,
          child: const NestedContainer(),
        ),
      ),
    );
  }
}

class NestedContainer extends StatelessWidget {
  const NestedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        InnerContainer(),
      ],
    );
  }
}

class InnerContainer extends StatelessWidget {
  const InnerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.redAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          DeeplyNestedContainer(),
        ],
      ),
    );
  }
}

class DeeplyNestedContainer extends StatelessWidget {
  const DeeplyNestedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      color: Colors.greenAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          DeeplyNestedWidget1(),
          DeeplyNestedWidget2(),
        ],
      ),
    );
  }
}

class DeeplyNestedWidget1 extends StatelessWidget {
  const DeeplyNestedWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      color: Colors.yellowAccent,
      child: const Text('Deeply Nested Widget 1'),
    );
  }
}

class DeeplyNestedWidget2 extends StatelessWidget {
  const DeeplyNestedWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      color: Colors.purpleAccent,
      child: const Text('Deeply Nested Widget 2'),
    );
  }
}
