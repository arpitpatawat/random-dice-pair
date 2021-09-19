import 'package:flutter/material.dart';
import 'dart:math';

// ignore: camel_case_types
class dicepage extends StatefulWidget {
  @override
  _dicepageState createState() => _dicepageState();
}

// ignore: camel_case_types
class _dicepageState extends State<dicepage> {
  int leftdice = 1;
  void randomdice() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              "Single Dice",
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$leftdice.png'),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    randomdice();
                  },
                  child: Text(
                    'Generate Number !',
                    style: TextStyle(fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[300],
                    onPrimary: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
