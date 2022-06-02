
bool isLeapYear(int x) {
  if (x % 400 == 0 || (x % 4 == 0 && x % 100 != 00)) {
    return true;
  } else {
    return false;
  }
}

int getDayOfMonth(int month, int year) {
  switch (month) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      return 30;
    case 4:
    case 6:
    case 9:
    case 11:
      return 31;
    case 2:
      if (isLeapYear(year)) {
        return 29;
      } else {
        return 28;
      }
    default:
      return 0;
  }
}

String getMonthToEnglish(int x) {
  switch (x) {
    case 1:
      return 'January';
    case 2:
      return 'Febuary';
    case 3:
      return 'March';
    case 4:
      return 'April';
    case 5:
      return 'May';
    case 6:
      return 'June';
    case 7:
      return 'July';
    case 8:
      return 'August';
    case 9:
      return 'September';
    case 10:
      return 'October';
    case 11:
      return 'November';
    case 12:
      return 'December';
    default:
      return '';
  }
}