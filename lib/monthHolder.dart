import 'Data.dart';
import 'dart:collection';
import 'weekHolder.dart';

class monthHolder {
  List<weekHolder> month = new List();

  void addWeek(weekHolder week) {
    month.add(week);
  }

  double averageMonthyMood() {
    Iterator i = month.iterator;
    double total = 0;
    int count = 0;
    while (i.moveNext()) {
      total += i.current.averageMood;
      count++;
    }
    return total / count;
  }
}
