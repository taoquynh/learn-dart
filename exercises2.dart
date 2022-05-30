import 'dart:io';

/**
 * Viết chương trình hỏi người dùng nhập vào một số nguyên. In ra màn hình số nguyên đó là số chẵn hay lẻ.
 */

exercises2() {
  print("Enter a number: ");

  int? x = int.parse(stdin.readLineSync()!);

  if (x % 2 == 0) {
    print("$x is even number");
  } else {
    print("$x is odd number");
  }
}