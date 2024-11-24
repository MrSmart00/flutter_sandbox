import 'package:feature_counter/counter_root_navigation.dart';
import 'package:feature_textform/text_form_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 2, 
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            bottom: const TabBar(
              tabs: [
                const Tab(
                  icon: Icon(Icons.add_rounded),
                  text: "Counter"
                ),
                const Tab(
                  icon: Icon(Icons.text_fields),
                  text: "Textform"
                )
              ]
            ),
            title: Text("Flutter Sandbox"),
          ),
          body: const TabBarView(
            children: [
              const CounterRootNavigation(),
              const TextformPage()
            ]
          )
        ),
      )
    );
  }
}
