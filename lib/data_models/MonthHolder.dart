import 'WeekHolder.dart';

class MonthHolder {
  List<WeekHolder> month = new List();

  void addWeek(WeekHolder week) {
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
