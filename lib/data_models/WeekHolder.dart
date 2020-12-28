import 'DayHolder.dart';

class WeekHolder {
  List<DayHolder> week = new List();

  void addDay(DayHolder day) {
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
