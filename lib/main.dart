import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(const WeekNumber());

class WeekNumber extends StatefulWidget {
  const WeekNumber({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => WeekNumberCustomization();
}

class WeekNumberCustomization extends State<WeekNumber> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
            child: SfCalendar(
              showWeekNumber: true,
              view: CalendarView.month,
              allowedViews: const[
                CalendarView.day,
                CalendarView.week,
                CalendarView.workWeek,
                CalendarView.month,
                CalendarView.timelineDay,
                CalendarView.timelineWeek,
                CalendarView.timelineWorkWeek,
                CalendarView.timelineMonth
              ],
              weekNumberStyle: const WeekNumberStyle(
                  textStyle: TextStyle(color: Colors.amber),
                  backgroundColor: Color(0xFFDF5E5E)),
            ),
          )),
    );
  }
}