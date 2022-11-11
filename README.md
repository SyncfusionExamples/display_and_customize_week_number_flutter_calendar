# How to show and customize the week number in the Flutter Calendar (SfCalendar)?

This example demonstrates How to show and customize the week number in the Flutter Calendar.

Use the [showWeekNumber](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/SfCalendar/showWeekNumber.html) property of the calendar to display the week number in the Flutter calendar. Customize the week number styles by using the calendar's [weekNumberStyle](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/WeekNumberStyle-class.html) property.

## Defining show week number and week number styles

```
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

```

You can also refer our UG documentation to know more about [WeekNumberStyle](https://help.syncfusion.com/flutter/calendar/getting-started#week-number-appearance).

## Requirements to run the demo
* [VS Code](https://code.visualstudio.com/download)
* [Flutter SDK v1.22+](https://flutter.dev/docs/development/tools/sdk/overview)
* [For more development tools](https://flutter.dev/docs/development/tools/devtools/overview)

## How to run this application
To run this application, you need to first clone or download the ‘create a flutter maps widget in 10 minutes’ repository and open it in your preferred IDE. Then, build and run your project to view the output.

## Further help
For more help, check the [Syncfusion Flutter documentation](https://help.syncfusion.com/flutter/introduction/overview),
 [Flutter documentation](https://flutter.dev/docs/get-started/install).