import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    count.toString(),
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 150,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize: const Size(90, 90),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                    ),
                    onPressed: () {
                      if (count != 0) {
                        setState(() {
                          count--;
                        });
                      }
                    },
                    child: const Text(
                      '-',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize: const Size(90, 90),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
