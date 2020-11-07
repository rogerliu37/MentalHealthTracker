import 'Data.dart';
import 'dart:collection';
import 'month.dart';

class monthHolder {
  List<monthHolder> year = new List();

  void addWeek(monthHolder month) {
    year.add(month);
  }

  double averageMonthyMood() {
    Iterator i = year.iterator;
    double total = 0;
    int count = 0;
    while (i.moveNext()) {
      total += i.current.averageMood;
      count++;
    }
    return total / count;
  }
}
