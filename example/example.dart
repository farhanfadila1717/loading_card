import 'package:flutter/material.dart';
import 'package:loading_card/loading_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Loading Card',
      debugShowCheckedModeBanner: false,
      home: ExampleLoadingCard(),
    );
  }
}

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
          children: [
            LoadingCard(
              height: 30,
              width: MediaQuery.of(context).size.width * .2,
              borderRadius: 30,
            ),
            const Padding(padding: const EdgeInsets.only(top: 24)),
            LoadingCard(
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.width - 48,
              borderRadius: 30,
            ),
            const Padding(padding: const EdgeInsets.only(top: 24)),
            LoadingCard(
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width - 48,
              borderRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
