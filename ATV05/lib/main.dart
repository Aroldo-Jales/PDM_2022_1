import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal.shade900,
            centerTitle: true,
            title: const Text("I'm poor"),
          ),
          backgroundColor: Colors.lightBlueAccent,
          body: const Center(
            child: Image(
              image: AssetImage('images/coal.png'),
            ),
          ),
        ),
      );
  }
}
