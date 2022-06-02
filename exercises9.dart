/**
 * Viết chương trình tìm tất cả các số chia hết cho 7 nhưng không phải bội số của 5, nằm trong đoạn 10 và 200.
 * Các số thu được sẽ được in thành chuỗi trên một dòng, cách nhau bằng dấu phẩy.
 */
import 'dart:io';
exercises9 () {
  List numbers = [];

  for (var i=10; i<=200; i++) {
    if (i % 7 == 0 && i % 5 != 0) {
      numbers.add(i);
    }
  }

  for (var i in numbers) {
    stdout.write("$i, ");
  }
}