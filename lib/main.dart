import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Dice Rolling App",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 1;

  void roller() {
    setState(() {
      num = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dice Roller"),
      ),
      body: Column(children: [
        SizedBox(
          height: 30,
        ),
        Center(
          child: Image.asset(
            "assets/$num.png",
            height: 200,
            width: 200,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: roller,
          child: Text("Roll"),
        ),
        SizedBox(
          height: 100,
        ),
        Text(
          "Designed by: Aaditya Dhakal",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
        ),
      ]),
    );
  }
}
