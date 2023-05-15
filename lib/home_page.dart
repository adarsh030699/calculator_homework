import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int noOfContainersInRow = 4;
  final int noOfContainersInColumn = 5;
  double first = 0;
  double second = 0;
  String opp = "";
  String text = "0";
  String result = "";

  void ButtonPressed(String buttontxt) {
    if (buttontxt == "AC") {
      result = "0";
      text = "";
      first = 0;
      second = 0;
    } else if (buttontxt == "+" ||
        buttontxt == "-" ||
        buttontxt == "/" ||
        buttontxt == "x") {
      first = double.parse(text);
      result = "";
      opp = buttontxt;
    } else if (buttontxt == "=") {
      first = double.parse(text);
      if (opp == "+") {
        result = (first + second).toString();
      } else if (opp == "-") {
        result = (first - second).toString();
      } else if (opp == "/") {
        result = (first ~/ second).toString();
      } else if (opp == "x") {
        result = (first * second).toString();
      }
    } else {
      if (text == "0") {
        text = "";
      }
      result = (text + buttontxt).toString();
    }

    setState(() {
      text = result;
    });
  }

  Widget CustomOutlinedButton(
    String value,
    double height,
    double width,
    Color color,
  ) {
    return GestureDetector(
      onTap: () {
        ButtonPressed(value);
      },
      child: Container(
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Color.fromARGB(255, 83, 82, 81))),
        width: width,
        height: height,
        child: Center(
          child: Text(
            value,
            style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontFamily: "pop"),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double containerHeight =
        (MediaQuery.of(context).size.height / 2) / noOfContainersInColumn;
    double containerwidth =
        MediaQuery.of(context).size.width / noOfContainersInRow;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 83, 82, 81),
              padding: EdgeInsets.only(right: 30, bottom: 10),
              alignment: Alignment.bottomRight,
              child: Text(
                text,
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
                  Color.fromARGB(255, 99, 99, 97)),
              CustomOutlinedButton("+/-", containerHeight, containerwidth,
                  Color.fromARGB(255, 99, 99, 97)),
              CustomOutlinedButton("%", containerHeight, containerwidth,
                  Color.fromARGB(255, 99, 99, 97)),
              CustomOutlinedButton(
                  "/",
                  containerHeight,
                  containerwidth,
                  Color.fromARGB(
                    255,
                    249,
                    158,
                    11,
                  )),
            ],
          ),
          Row(
            children: [
              CustomOutlinedButton("7", containerHeight, containerwidth,
                  Color.fromARGB(255, 124, 125, 122)),
              CustomOutlinedButton("8", containerHeight, containerwidth,
                  Color.fromARGB(255, 124, 125, 122)),
              CustomOutlinedButton("9", containerHeight, containerwidth,
                  Color.fromARGB(255, 124, 125, 122)),
              CustomOutlinedButton(
                  "x",
                  containerHeight,
                  containerwidth,
                  Color.fromARGB(
                    255,
                    249,
                    158,
                    11,
                  ))
            ],
          ),
          Row(
            children: [
              CustomOutlinedButton("4", containerHeight, containerwidth,
                  Color.fromARGB(255, 124, 125, 122)),
              CustomOutlinedButton("5", containerHeight, containerwidth,
                  Color.fromARGB(255, 124, 125, 122)),
              CustomOutlinedButton("6", containerHeight, containerwidth,
                  Color.fromARGB(255, 124, 125, 122)),
              CustomOutlinedButton(
                  "-",
                  containerHeight,
                  containerwidth,
                  Color.fromARGB(
                    255,
                    249,
                    158,
                    11,
                  ))
            ],
          ),
          Row(
            children: [
              CustomOutlinedButton("1", containerHeight, containerwidth,
                  Color.fromARGB(255, 124, 125, 122)),
              CustomOutlinedButton("2", containerHeight, containerwidth,
                  Color.fromARGB(255, 124, 125, 122)),
              CustomOutlinedButton("3", containerHeight, containerwidth,
                  Color.fromARGB(255, 124, 125, 122)),
              CustomOutlinedButton(
                  "+",
                  containerHeight,
                  containerwidth,
                  Color.fromARGB(
                    255,
                    249,
                    158,
                    11,
                  ))
            ],
          ),
          Row(
            children: [
              CustomOutlinedButton("0", containerHeight, containerwidth * 2,
                  Color.fromARGB(255, 124, 125, 122)),
              CustomOutlinedButton(".", containerHeight, containerwidth,
                  Color.fromARGB(255, 124, 125, 122)),
              CustomOutlinedButton(
                  "=",
                  containerHeight,
                  containerwidth,
                  Color.fromARGB(
                    255,
                    249,
                    158,
                    11,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
