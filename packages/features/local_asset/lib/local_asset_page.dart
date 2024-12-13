import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class LocalAssetPage extends StatefulWidget {
  const LocalAssetPage({super.key});

  @override
  LocalAssetPageState createState() => LocalAssetPageState();
}

class LocalAssetPageState extends State<LocalAssetPage> {
  String _jsonContent = '';
  String _localContent1 = '';
  String _localContent2 = '';

  @override
  void initState() {
    super.initState();
    _loadJson();
    _loadResoueceJson();
    _loadMarkdown();
  }

  Future<void> _loadJson() async {
    final response = await rootBundle
        .loadString('packages/feature_local_asset/assets/sample.json');
    final data = await json.decode(response);
    setState(() {
      _jsonContent = json.encode(data);
    });
  }

  Future<void> _loadResoueceJson() async {
    final response = await rootBundle
        .loadString('packages/feature_local_asset/resources/hoge.json');
    final data = await json.decode(response);
    setState(() {
      _localContent1 = json.encode(data);
    });
  }

  Future<void> _loadMarkdown() async {
    final response = await rootBundle
        .loadString('packages/feature_local_asset/resources/something/test.md');
    setState(() {
      _localContent2 = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Asset Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_jsonContent.isEmpty)
              const CircularProgressIndicator()
            else
              Text(_jsonContent),
            const SizedBox(height: 20),
            if (_localContent1.isEmpty)
              const CircularProgressIndicator()
            else
              Text(_localContent1),
            const SizedBox(height: 20),
            if (_localContent2.isEmpty)
              const CircularProgressIndicator()
            else
              Text(_localContent2),
          ],
        ),
      ),
    );
  }
}
