import 'package:flutter/material.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  var x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 207, 199),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              x.toString(),
              style: const TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  x++;
                });
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Text(
                    'تسبيح',
                    style: TextStyle(fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Heart(),
          ],
        ),
      ),
    );
  }
}

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  var heartColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (heartColor == Colors.black) {
          setState(() {
            heartColor = Colors.red;
          });
        } else {
          setState(() {
            heartColor = Colors.black;
          });
        }
      },
      child: Icon(
        Icons.favorite,
        size: 88,
        color: heartColor,
      ),
    );
  }
}
