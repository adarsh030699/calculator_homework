import 'package:calculator_homework/calculator_notifier.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'custom_buttons.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calculatorNotifier = ref.watch(calculatorProvider);
    double containerHeight = (MediaQuery.of(context).size.height / 2) /
        calculatorNotifier.noOfContainersInColumn;
    double containerwidth = MediaQuery.of(context).size.width /
        calculatorNotifier.noOfContainersInRow;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 34, 36, 36),
              padding: EdgeInsets.only(right: 30, bottom: 10),
              alignment: Alignment.bottomRight,
              child: Text(
                calculatorNotifier.answer,
                style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ),
          ),
          Row(
            children: [
              CustomOutlinedButton("AC", containerHeight, containerwidth,
                  Color.fromARGB(255, 56, 57, 57), calculatorNotifier),
              CustomOutlinedButton("+/-", containerHeight, containerwidth,
                  Color.fromARGB(255, 56, 57, 57), calculatorNotifier),
              CustomOutlinedButton("%", containerHeight, containerwidth,
                  Color.fromARGB(255, 56, 57, 57), calculatorNotifier),
              CustomOutlinedButton("/", containerHeight, containerwidth,
                  Color.fromARGB(255, 255, 148, 41), calculatorNotifier),
            ],
          ),
          Row(
            children: [
              CustomOutlinedButton("7", containerHeight, containerwidth,
                  Color.fromARGB(255, 89, 90, 90), calculatorNotifier),
              CustomOutlinedButton("8", containerHeight, containerwidth,
                  Color.fromARGB(255, 89, 90, 90), calculatorNotifier),
              CustomOutlinedButton("9", containerHeight, containerwidth,
                  Color.fromARGB(255, 89, 90, 90), calculatorNotifier),
              CustomOutlinedButton("x", containerHeight, containerwidth,
                  Color.fromARGB(255, 255, 148, 41), calculatorNotifier)
            ],
          ),
          Row(
            children: [
              CustomOutlinedButton("4", containerHeight, containerwidth,
                  Color.fromARGB(255, 89, 90, 90), calculatorNotifier),
              CustomOutlinedButton("5", containerHeight, containerwidth,
                  Color.fromARGB(255, 89, 90, 90), calculatorNotifier),
              CustomOutlinedButton("6", containerHeight, containerwidth,
                  Color.fromARGB(255, 89, 90, 90), calculatorNotifier),
              CustomOutlinedButton("-", containerHeight, containerwidth,
                  Color.fromARGB(255, 255, 148, 41), calculatorNotifier)
            ],
          ),
          Row(
            children: [
              CustomOutlinedButton("1", containerHeight, containerwidth,
                  Color.fromARGB(255, 89, 90, 90), calculatorNotifier),
              CustomOutlinedButton("2", containerHeight, containerwidth,
                  Color.fromARGB(255, 89, 90, 90), calculatorNotifier),
              CustomOutlinedButton("3", containerHeight, containerwidth,
                  Color.fromARGB(255, 89, 90, 90), calculatorNotifier),
              CustomOutlinedButton("+", containerHeight, containerwidth,
                  Color.fromARGB(255, 255, 148, 41), calculatorNotifier)
            ],
          ),
          Row(
            children: [
              CustomOutlinedButton("0", containerHeight, containerwidth * 2,
                  Color.fromARGB(255, 89, 90, 90), calculatorNotifier),
              CustomOutlinedButton(".", containerHeight, containerwidth,
                  Color.fromARGB(255, 89, 90, 90), calculatorNotifier),
              CustomOutlinedButton(
                  "=",
                  containerHeight,
                  containerwidth,
                  Color.fromARGB(
                    255,
                    249,
                    158,
                    11,
                  ),
                  calculatorNotifier)
            ],
          ),
        ],
      ),
    );
  }
}


// answer bacgkground = RGB(34,36,36)

// upper button = RGB (56,57,57)

//  button background RGB(89,90,90)

//  orange button RGB(255,148,41)