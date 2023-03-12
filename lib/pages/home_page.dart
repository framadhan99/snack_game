import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<int> snakePosition = [45, 65, 85, 105, 125];
  int numberOfSquares = 760;

  static var randomNumber = Random();
  int food = randomNumber.nextInt(700);

  // Food
  void generatedNewFood() {
    food = randomNumber.nextInt(700);
  }

  void startGame() {
    snakePosition = [45, 65, 85, 105, 125];
    const duration = Duration(milliseconds: 300);
    Timer.periodic(duration, (timer) {
      // updateSnake();
    });
  }

  var direction = 'down';
  // void updateSnake

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: GestureDetector(
            child: Container(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 20),
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      // color: Colors.green,
                      padding: EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
          ))
        ],
      ),
    );
  }
}
