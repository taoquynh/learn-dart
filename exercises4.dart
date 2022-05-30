import 'dart:io';

/**
 * Viết chương trình in ra tất cả các số lẻ nhỏ hơn 100 trừ các số 5, 7, 93.
 */

exercises4() {
  for (var i = 1; i <= 99; i ++) {
    if (i != 5 && i != 7 && i != 93) {
      stdout.write("$i, ");
    }
  }
}