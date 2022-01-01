import 'package:flutter/material.dart';

import '../../../utils/date_time_extensions/date_time_extensions.dart';

class DateLabel extends StatelessWidget {
  const DateLabel({Key? key, required this.date}) : super(key: key);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Material(
        color: Colors.black45,
        shape: const StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4.0,
            horizontal: 8.0,
          ),
          child: Text(
            date.relativeDay,
            style: const TextStyle(color: Colors.white54),
          ),
        ),
      ),
    );
  }
}
