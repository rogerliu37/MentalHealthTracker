class YearHolder {
  List<YearHolder> year = new List();

  void addMonth(YearHolder month) {
    year.add(month);
  }

  double averageYearlyMood() {
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
