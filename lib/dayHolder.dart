import 'Data.dart';
import 'dart:collection';

class dayHolder {
  List<Data> dayData = new List();

  void addNode(Data data) {
    dayData.add(data);
  }

  double averageMood() {
    Iterator i = dayData.iterator;
    double total = 0;
    int count = 0;
    while (i.moveNext()) {
      total += i.current().mood;
      count++;
    }
    return total / count;
  }
}
