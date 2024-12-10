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

  @override
  void initState() {
    super.initState();
    _loadJson();
  }

  Future<void> _loadJson() async {
    final response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
    setState(() {
      _jsonContent = json.encode(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Asset Page'),
      ),
      body: Center(
        child: _jsonContent.isEmpty
            ? const CircularProgressIndicator()
            : Text(_jsonContent),
      ),
    );
  }
}
