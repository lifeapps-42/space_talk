import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String get timeOnly {
    final formatter = DateFormat.Hm();
    return formatter.format(toLocal());
  }

  DateTime toDay() {
    return DateTime(year, month, day);
  }

  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  String get niceAndShort {
    final formatter = DateFormat('d MMM');
    return formatter.format(toLocal());
  }

  String get relativeDay {
    final now = DateTime.now();
    if(isSameDay(now)) {
      return 'Today';
    }
    return niceAndShort;
  }
}
