import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(const RestrictViewNavigation());

class RestrictViewNavigation extends StatefulWidget {
  const RestrictViewNavigation({super.key});

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
                      child: const Text('Restrict view navigation'),
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
                          allowedViews: const [
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
    startTime: DateTime.now().add(const Duration(hours: 1)),
    endTime: DateTime.now().add(const Duration(hours: 2)),
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