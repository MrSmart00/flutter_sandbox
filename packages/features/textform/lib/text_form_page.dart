import 'package:flutter/material.dart';

class TextformPage extends StatefulWidget {
  const TextformPage({super.key});

  @override
  State<StatefulWidget> createState() => TextformState();
}

class TextformState extends State<TextformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Text Form Page"),
      ),
      body: Center(
        child: TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a text',
          ),
        ),
      ),
    );
  }
}
