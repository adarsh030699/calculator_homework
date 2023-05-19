import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculatorProvider extends ChangeNotifier {
  final int _noOfContainersInRow = 4;
  final int _noOfContainersInColumn = 5;
  double _first = 0;
  double _second = 0;
  String _opp = "";
  String _answer = "0";
  String _result = "";

  int get noOfContainersInRow => _noOfContainersInRow;
  int get noOfContainersInColumn => _noOfContainersInColumn;
  double get first => _first;
  double get second => _second;
  String get opp => _opp;
  String get answer => _answer;
  String get result => _result;

  void ButtonPressed(String buttontxt) {
    if (buttontxt == "AC") {
      _result = "0";
      _answer = "";
      _first = 0;
      _second = 0;
    } else if (buttontxt == "+" ||
        buttontxt == "-" ||
        buttontxt == "/" ||
        buttontxt == "x") {
      _first = double.parse(answer);
      _result = "";
      _opp = buttontxt;
    } else if (buttontxt == "=") {
      _second = double.parse(answer);
      if (opp == "+") {
        _result = (first + second).toString();
      } else if (opp == "-") {
        _result = (first - second).toString();
      } else if (opp == "/") {
        _result = (first ~/ second).toString();
      } else if (opp == "x") {
        _result = (first * second).toString();
      }

      if (result.endsWith(".0")) {
        _result = result.substring(0, result.length - 2);
      }
    } else {
      if (answer == "0") {
        _answer = "";
      }
      _result = (answer + buttontxt).toString();
    }

    _answer = result;

    notifyListeners();
  }
}

final calculatorProvider =
    ChangeNotifierProvider((ref) => CalculatorProvider());
