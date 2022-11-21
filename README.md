# How to restrict the view navigation in the Flutter Calendar? 

This example demonstrates how to restrict the view navigation in the Flutter Calendar.

You can restrict view navigation in the Flutter Event Calendar by setting the [viewNavigationMode](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/SfCalendar/viewNavigationMode.html) property value to None.


```
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SfCalendar(
      view: CalendarView.day,
      viewNavigationMode: ViewNavigationMode.none,
    ),);
}

```

You can also refer our UG documentation to know more about [ViewNavigationMode](https://help.syncfusion.com/flutter/calendar/date-navigations#view-navigation-mode) in the calendar.

## Requirements to run the demo
* [VS Code](https://code.visualstudio.com/download)
* [Flutter SDK v1.22+](https://flutter.dev/docs/development/tools/sdk/overview)
* [For more development tools](https://flutter.dev/docs/development/tools/devtools/overview)

## How to run this application
To run this application, you need to first clone or download the ‘create a flutter maps widget in 10 minutes’ repository and open it in your preferred IDE. Then, build and run your project to view the output.

## Further help
For more help, check the [Syncfusion Flutter documentation](https://help.syncfusion.com/flutter/introduction/overview),
 [Flutter documentation](https://flutter.dev/docs/get-started/install).