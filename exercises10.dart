import 'dart:io';
import 'uitl.dart';

/**
 * Viết chương trình nhập ngày, tháng, năm. Hãy cho biết tháng đó có bao nhiêu ngày.
 */

exercises10() {
  print("Enter year: ");
  int? year = int.parse(stdin.readLineSync()!);

  print("Enter month: ");
  int? month = int.parse(stdin.readLineSync()!);

  print("Enter day: ");
  int? day = int.parse(stdin.readLineSync()!);

  print("${getMonthToEnglish(month)} has ${getDayOfMonth(month, year)} days");
}
