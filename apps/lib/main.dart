import 'package:app_repositories/entities/network_mode.dart';
import 'package:app_repositories/services/network_client.dart';
import 'package:feature_counter/counter_root_navigation.dart';
import 'package:feature_rss/rss_reader_page.dart';
import 'package:feature_textform/text_form_page.dart';
import 'package:flutter/material.dart'; 
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const networkClient = NetworkClient(HttpNetworkMode(baseUrl: 'https://api.rss2json.com/v1/api.json'));
    
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.add_rounded),
                  text: 'Counter'
                ),
                Tab(
                  icon: Icon(Icons.text_fields),
                  text: 'Textform'
                ),
                Tab(
                  icon: Icon(Icons.rss_feed),
                  text: 'RSS'
                )
              ]
            ),
            title: const Text('Flutter Sandbox'),
          ),
          body: const TabBarView(
            children: [
              CounterRootNavigation(),
              TextformPage(),
              RssReaderPage()
            ]
          )
        ),
      )
    );
  }
}
