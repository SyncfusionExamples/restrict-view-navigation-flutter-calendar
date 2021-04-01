import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(RestrictViewNavigation());

class RestrictViewNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScheduleExample();
}

class ScheduleExample extends State<RestrictViewNavigation> {
  ViewNavigationMode _viewNavigationMode = ViewNavigationMode.snap;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
          child: Column(
            children: [
              Container(
                child: TextButton(
                  child: Text('Restrict view navigation'),
                  onPressed: () {
                    setState(() {
                      _viewNavigationMode = ViewNavigationMode.none;
                    });
                  },
                ),
              ),
              Expanded(
                child: SafeArea(
                    child: SfCalendar(
                  view: CalendarView.day,
                  allowedViews: [
                    CalendarView.day,
                    CalendarView.week,
                    CalendarView.workWeek,
                    CalendarView.month,
                    CalendarView.timelineDay,
                    CalendarView.timelineWeek,
                    CalendarView.timelineWorkWeek,
                    CalendarView.timelineMonth,
                  ],
                  dataSource: _getCalendarDataSource(),
                  viewNavigationMode: _viewNavigationMode,
                )),
              )
            ],
          ),
        )));
  }
}

_AppointmentDataSource _getCalendarDataSource() {
  List<Appointment> appointments = <Appointment>[];
  appointments.add(Appointment(
    startTime: DateTime.now().add(Duration(hours: 1)),
    endTime: DateTime.now().add(Duration(hours: 2)),
    subject: 'Planning',
    color: Colors.orangeAccent,
  ));

  return _AppointmentDataSource(appointments);
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}
