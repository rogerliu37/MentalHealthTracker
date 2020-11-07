import 'Data.dart';
import 'dart:collection';
import 'dayHolder.dart';

class weekHolder {
  List<dayHolder> week = new List();

  void addDay(dayHolder day) {
    week.add(day);
  }

  double averageMood() {
    Iterator i = week.iterator;
    double total = 0;
    int count = 0;
    while (i.moveNext()) {
      total += i.current().averageMood;
      count++;
    }
    return total / count;
  }
}
