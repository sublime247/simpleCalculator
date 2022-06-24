// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
import 'dart:io';
import 'dart:math';
import 'dart:convert';

class CalcObject {
  //Instance of Fields
  double? firstNum;
  double? secondNum;

  //Class Methods or functions

//Addition method
  double add(double first, double second) {
    return first + second;
  }
//Subtraction Method
  double subtract(double first, double second) {
    return first - second;
  }
//Multiplication Method
  double multiply(double first, double second) {
    return first * second;
  }
//Exponential method
  double expontentiate(double first, double second) {
    // Math.pow returns a double, so use typecasting to account for large numbers

    double exponentProd = pow(first, second) as double;

    return exponentProd;
  }

//Division Method
  double divide(double first, double second) {
    return first / second;
  }


   static void performOperation() {
    // TODO : adding a Delay
    print("""
        \nWelcome to the Dart Calculator!
        \n=============================== 
        \nThis calculator performs operations on two numbers. 
        \nPlease type your first number \nType 'exit' to exit at anytime! \n""");

    String firstInput = stdin.readLineSync() as String;
    firstInput = firstInput.trim();
    double first = 0.0;

    if (firstInput == "exit") {
      exit(0);
    } else {
      first = double.parse(firstInput);
    }

    print("\nGreat! Now input your second number.\n");

    String secondInput = stdin.readLineSync() as String;

    secondInput = secondInput.trim();
    double second = 0.0;

    if (secondInput == "exit") {
      exit(0);
    } else {
      second = double.parse(secondInput);
    }

    CalcObject calc1 = CalcObject(first,second);

    print("""\nAwesome! Now, choose the operation you want.
    \nType + for addition
    \nType - for subtraction
    \nType * for multiplication
    \nType ** to raise the first number to the power of the second
    \nType / to divide""");

    String operator = stdin.readLineSync() as String;
    operator = operator.trim();

    switch (operator) {
      case "+":
        print(
            "${calc1.firstNum} plus ${calc1.secondNum} equals = ${calc1.add(first, second)}");
        backToMainMenu();
        break;
      case "-":
        print(
            "${calc1.firstNum} minus ${calc1.secondNum} equals = ${calc1.subtract(first, second)}");
        backToMainMenu();
        break;
      case "*":
        print(
            "${calc1.firstNum} multiplied by ${calc1.secondNum} equals = ${calc1.multiply(first, second)}");
        backToMainMenu();
        break;
      case "**":
        print(
            "${calc1.firstNum} raised to the power of ${calc1.secondNum} equals = ${calc1.expontentiate(first, second)}");
        backToMainMenu();
        break;
      case "/":
        print(
            "${calc1.firstNum} divided by ${calc1.secondNum} equals = ${calc1.divide(first, second)}");
        backToMainMenu();
        break;
      case "exit":
        exit(0);
      default:
        print("Input not recognized.");
        backToMainMenu();
    }
  }

  static void backToMainMenu() {
    print("\nReturning to main menu...\n");
    performOperation();
  }

  //The Constructor body
  CalcObject(this.firstNum, this.secondNum);
}
