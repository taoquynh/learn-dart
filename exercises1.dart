/**
 * Viết chương trình hỏi người dùng họ tên và tuổi (là một số nguyên). Tính và in ra màn hình còn bao nhiêu năm nữa thì người đó mừng thọ 100 tuổi 🙂
 */

// importing dart:io file
import 'dart:io';

void exercises1()
{
  print("Enter your name? - ");
  // Reading name of the Geek
  String? name = stdin.readLineSync();

  // Printing the name
  print("Hello, $name! \nWelcome to Dart Geek!!");

  // Asking for age number
  print("Enter your age number:");

  // Scanning number
  int? n = int.parse(stdin.readLineSync()!);
  // Here ? and ! are for null safety

  // Printing that number
  print("Your age number is $n.");

  print("Your need ${100 - n} years for birthday 100 th.");
}
