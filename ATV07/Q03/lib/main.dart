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

  Map<String,bool> images = {
    'images/arthur-morgan.jpg' : false,
    'images/doug-judy.jpg': false,
    'images/faye-valentine.jpg': false,
    'images/souma.jpg': false,
    'images/uma-thurman.jpg': false,
  };

  Icon returnIcon(bool b) {
    if(b) {
      return const Icon(Icons.favorite, size: 50);
    }
    return const Icon(Icons.favorite_border, size: 50);
  }
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
                  Column(
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(images.keys.elementAt(count)),
                            width: 350,
                            height: 350,
                          ),
                        ],
                      ),
                      Row(
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
                              setState(() {
                                if(images[images.keys.elementAt(count)] == true) {
                                  images[images.keys.elementAt(count)] = false;
                                } else {
                                  images[images.keys.elementAt(count)] = true;
                                }
                              });
                            },
                            child: returnIcon(images[images.keys.elementAt(count)]!)
                          ),
                        ],
                      ),
                    ],
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
                      '<',
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
                        if (count != 4) {
                          setState(() {
                            count++;
                          });
                        }
                      });
                    },
                    child: const Text(
                      '>',
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
