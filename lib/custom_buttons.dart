import 'package:flutter/material.dart';

Widget CustomOutlinedButton(String value, double height, double width,
    Color color, final calculatorNotifier) {
  return GestureDetector(
    onTap: () {
      calculatorNotifier.ButtonPressed(value);
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
