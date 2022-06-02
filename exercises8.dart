/**
 * Viết chương trình sinh ra một số tự nhiên n ngẫu nhiên từ 1 đến 100. Đề nghị người dùng đoán một số và nhập vào.
 * In ra màn hình thông báo xem số người dùng đoán đúng, lớn hơn hay nhỏ hơn số n. Nếu chưa đúng thì cho phép người dùng đoán lại hai lần nữa.
 */
import 'dart:io';
import 'dart:math';

exercises8() {
  final random = Random().nextInt(100);
  var n = 2;

  checkRandom(random, n);
}

checkRandom(int random, int n) {
  print(random);
  print(n);

  print("Please enter a guess a number greater than 0 and less than 100:");
  int? x = int.parse(stdin.readLineSync()!);

  if (x == random) {
    print("Congratulations you guessed correctly!");
  } else {
    if (x < random) {
      print("The number you entered is smaller than the number you need to find.");
    } else {
      print("The number you entered is larger than the number you need to find.");
    }

    if (n > 0) {
      n--;
      checkRandom(random, n);
    }
  }
}