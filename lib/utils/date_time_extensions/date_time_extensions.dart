import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String get timeOnly {
    final formatter = DateFormat.Hm();
    return formatter.format(toLocal());
  }
}