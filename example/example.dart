import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: ExampleLoadingCard(),
      ),
    );

class ExampleLoadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Loading Card'),
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
