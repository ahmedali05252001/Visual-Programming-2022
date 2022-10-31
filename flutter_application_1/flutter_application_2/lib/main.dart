import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello World!",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 60)),
            Text(
              'Text',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Hind'),
            ),
            TextButton(
                style: ButtonStyle(
                  
                ),
                onPressed: () {
                  print("This is my email.");
                },
                child: const Text('ahmed.ali05252001@gmail.com')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      print('ileri gittiniz');
                    },
                    child: const Text('NEXT')),
                ElevatedButton(
                    onPressed: () {
                      print('geri gittiniz');
                    },
                    child: const Text('BACK'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
