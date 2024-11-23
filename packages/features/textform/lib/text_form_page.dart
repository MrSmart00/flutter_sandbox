import 'package:flutter/material.dart';

class TextformPage extends StatefulWidget {
  const TextformPage({super.key});

  @override
  State<StatefulWidget> createState() => _TextformState();
}

class _TextformState extends State<TextformPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Center(
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
