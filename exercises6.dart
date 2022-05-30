import 'dart:io';

/**
 * Viết chương trình kiểm tra xem hai số thực a b cho trước có cùng dấu hay không.
 */

exercise6() {
  print("Enter 2 real number: ");
  print("First number: ");
  double? a = double.parse(stdin.readLineSync()!);
  print("Second number: ");
  double? b = double.parse(stdin.readLineSync()!);

  if ((a * b > 0) || (a == 0 && b == 0)) {
    print("$a and $b are two real numbers with the same signs");
  } else {
    print("$a and $b are two real numbers with opposite signs");
  }
}