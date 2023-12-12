import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Magic_Ball',
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Magic Ball"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen.shade400,
      ),
      backgroundColor: Colors.lightGreen.shade300,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightGreen.shade300,
            elevation: 20.0,
            shadowColor: Colors.lightGreen.shade200,
          ),
          onPressed: () {
            setState(() {
              ballNumber();
            });
          },
          child: Image.asset('images/ball$number.png'),
        ),
      ),
    );
  }

  void ballNumber() {
    number = Random().nextInt(5) + 1;
  }
}
