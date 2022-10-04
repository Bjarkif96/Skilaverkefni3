import 'dart:ffi';
import 'dart:io';
import 'dart:convert';
import 'package:test/test.dart';

void main() {
  int total = 0;
  for (int i = 1; i <= 10; i++) {
    print(i);
    total += i;
  }
  print("sum : $total");
  print("-------------------------------");
  print("Next Program!");
  print("-------------------------------");
  print("Type in a number and I will \ngive you the multiplication table for the number");
  String inputNumber =
      stdin.readLineSync(encoding: Encoding.getByName("UTF-8"));
  int myNumber = int.parse(inputNumber);
  for (int a = 1; a <= 10; a++) {
    if (a <= 10) {
      int result = myNumber * a;
      print("$myNumber * $a = $result");
    }
  }
  print("-------------------------------");
  print("Next Program!");
  print("-------------------------------");
  print("Write in 5 numbers and I will give you sum and average of these numbers!");
  double number;
  double sum = 0;
  for (int i = 0; i < 5; i++){

    print("Enter a number: ");
    number = double.parse(stdin.readLineSync());

    sum += number;
  }
  double average = sum / 5;
  print("The sum of these numbers is $sum");
  print("The average of these number is $average");
  print("-------------------------------");
  print("Next Program!");
  print("-------------------------------");
  print("Enter a big number and I will tell you \nhow many integers it's made of");
  String inputtedNumber = stdin.readLineSync(encoding: Encoding.getByName("UTF-8"));
  int num = int.parse(inputtedNumber);
  int digits = 0;
  while(num != 0){
      digits = digits + 1;
      num = (num ~/ 10);
    }
  print("Number of digits: $digits");
}
