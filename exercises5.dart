import 'dart:io';

/**
 * Viết chương trình tìm số lớn nhất trong ba số thực a, b, c.
 */

exercises5() {
  print("Enter three real number!");
  print("First number: ");
  double? a = double.parse(stdin.readLineSync()!);
  print("Second number: ");
  double? b = double.parse(stdin.readLineSync()!);
  print("Third number: ");
  double? c = double.parse(stdin.readLineSync()!);

  var max = a;
  if (max < b) {
    max = b;
  }

  if (max < c) {
    max = c;
  }

  print("Max in three number $a, $b, $c is $max");
}