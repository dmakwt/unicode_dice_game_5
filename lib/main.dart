import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomNumber1 = 1;

  int randomNumber2 = 1;

  void play() {
    final random = Random();
    int randomNum1 = random.nextInt(6) + 1;
    int randomNum2 = random.nextInt(6) + 1;

    randomNumber1 = randomNum1;
    randomNumber2 = randomNum2;

    print(randomNumber1);
    print(randomNumber2);

    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          play();
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text(
              "Dice Game",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/dice_$randomNumber1.png",
                    width: 140,
                    height: 140,
                  ),
                  Container(width: 10),
                  Image.asset(
                    "images/dice_$randomNumber2.png",
                    width: 140,
                    height: 140,
                  )
                ],
              ),
              Container(
                width: 120,
                height: 50,
                margin: EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  child: Text('Play'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // لتغيير لون الخلفية
                    foregroundColor: Colors.white, // لتغيير لون النص
                  ),
                  onPressed: () {
                    play();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
