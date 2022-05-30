import 'dart:io';

import 'extension_string.dart';

/**
 * Viết chương trình in ra cách đọc của một số nguyên cho trước có ba chữ số. Ví dụ với n=123 thì kết quả in ra màn hình là Một trăm hai mươi ba.
 */

exercises7() {
  print("Enter a 3-digit number");
  int? x = int.parse(stdin.readLineSync()!);

  if (x < 100 || x > 999) {
    print("The number is incorrect. Please re-enter!");
    exercises7();
    return;
  }
  
  print("Số $x đọc là: ${readThreeDigitsNumber(x)}");

  exercises7();
}

String readThreeDigitsNumber(int x) {
  List<int> numbers = [];
  int temp = x;

  while (temp >= 10) {
    var n = temp % 10;
    temp = temp ~/ 10;
    numbers.insert(0, n.toInt());

    if (temp < 10) {
      numbers.insert(0, temp.toInt());
    }
  }

  var hundreds = numbers.first;
  var tens = numbers[1];
  var units = numbers.last;

  String textHundreds = "${readOneDigitsNumber(numbers.first)}".capitalize();
  String resultStr = "";

  if (x == int.parse("${hundreds}00")) {
    resultStr = "$textHundreds trăm"; // x00
  } else if (tens == 0) {
    resultStr = "$textHundreds trăm lẻ ${readOneDigitsNumber(units)}"; // x0x
  } else {
    if (units == 0) {
      if (tens == 1) {
        resultStr = "$textHundreds trăm mười"; // x10
      } else {
        resultStr = "$textHundreds trăm ${readOneDigitsNumber(tens)} mươi"; // xx0
      }
    } else {
      if (tens == 1) {
        resultStr = "$textHundreds trăm mười ${readOneDigitsNumber(units)}"; // x1x
      } else {
        resultStr =
        "$textHundreds trăm ${readOneDigitsNumber(tens)} mươi ${readOneDigitsNumber(units)}"; // xxx
      }
    }
  }

  return resultStr;
}

String readOneDigitsNumber(int x) {
  switch (x) {
    case 1:
      return "một";
    case 2:
      return "hai";
    case 3:
      return "ba";
    case 4:
      return "bốn";
    case 5:
      return "năm";
    case 6:
      return "sáu";
    case 7:
      return "bảy";
    case 8:
      return "tám";
    case 9:
      return "chín";
    default:
      return "";
  }
}
