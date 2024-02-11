import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

import 'colorTile.dart';

class Timer1 extends StatelessWidget {
  const Timer1(
    this.year,
    this.month,
    this.day,
    this.hours,
    this.min,
  {super.key}
  );

  final int year;
  final int month;
  final int day;
  final int hours;
  final int min;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: ColorTile.timeBack,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TimerCountdown(
            format: CountDownTimerFormat.daysHoursMinutesSeconds,
            endTime: DateTime(year, month, day, hours, min),
            timeTextStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color: ColorTile.timeCount,
            ),
            descriptionTextStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: ColorTile.timeDisc,
            ),
            onEnd: () {

            },
          ),
        ),
      ),
    );
  }
}
