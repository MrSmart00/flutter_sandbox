import 'dart:convert';

import 'package:feature_flutter_gen_sample/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class FlutterGenSamplePage extends StatefulWidget {
  const FlutterGenSamplePage({super.key});

  @override
  FlutterGenSamplePageState createState() => FlutterGenSamplePageState();
}

class FlutterGenSamplePageState extends State<FlutterGenSamplePage> {
  String _jsonContent = '';

  @override
  void initState() {
    super.initState();
    _loadJson();
  }

  Future<void> _loadJson() async {
    final response = await rootBundle.loadString(Assets.test);
    final data = await json.decode(response);
    setState(() {
      _jsonContent = data.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterGen Sample'),
      ),
      body: Center(
        child: _jsonContent.isNotEmpty
            ? Text(_jsonContent)
            : const CircularProgressIndicator(),
      ),
    );
  }
}
