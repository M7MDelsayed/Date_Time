void main(List<String> arguments) {
  final now = DateTime.now();
  // today date
  print("Today Data: $now");

  final nowWeekDay = now.weekday;
  print('Week Day number = $nowWeekDay');

  final String nowWeekDayName = getweekdayName(nowWeekDay);
  print('Today Name Is : $nowWeekDayName');

  print('Data Now: ${now.hour}:${now.minute}:${now.second}');

  print('Year Now: ${now.year}');

  final tomorrow = now.add(Duration(days: 1));
  print("Tommorow: ${tomorrow.day}");
  final tommorowDayName = getweekdayName(tomorrow.weekday);
  print("Tommorow: $tommorowDayName");

  final yesterday = now.subtract(Duration(days: 1));
  print("yesterday: ${yesterday.day}");
  final yesterdayDayName = getweekdayName(yesterday.weekday);
  print("yesterday: $yesterdayDayName");

  final data = now.year;
  data < 2040 ? print('Befor 2040') : print('After 2040');

  final currentYear = now.year;
  currentYear == 2022 ? print('Yes 2022') : print('Not 2022');

  final dateInStr = '2022-08-08 04:49:05';
  final paresdDate = DateTime.parse(dateInStr);
  print('parsedDate = ${paresdDate.hour}');

  final currentHour = now.hour;
  currentHour < 12 ? print("AM") : print("PM");

  final cMonth = now.month;
  cMonth == 12 ? print("December") : print("Not December");

  final currentMonth = now.month;
  currentMonth == 8 ? print("Oguest") : print("Not Oguest");
}

String getweekdayName(int weekday) {
  switch (weekday) {
    case DateTime.saturday:
      return "Saturday";
    case DateTime.sunday:
      return "Sunday";
    case DateTime.monday:
      return "Monday";
    case DateTime.tuesday:
      return "Tuesday";
    case DateTime.wednesday:
      return "Wednesday";
    case DateTime.thursday:
      return "Thursday";
    case DateTime.friday:
      return "Friday";
    default:
      return "day is not supported ";
  }
}
