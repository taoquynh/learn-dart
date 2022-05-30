import 'dart:io';

/**
 * In ra màn hình tất cả các số nguyên dương lẻ nhỏ hơn 100.
 */

exercises3() {
  for (var i = 0; i < 100; i ++) {
    if (i % 2 == 1) {
      stdout.write("$i, ");
    }
  }
}