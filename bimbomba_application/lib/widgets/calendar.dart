import 'package:bimbomba_application/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

final Map<DateTime, List> _holidays = {
  DateTime(2020, 1, 1): ['New Year\'s Day'],
  DateTime(2020, 1, 6): ['Epiphany'],
  DateTime(2020, 2, 14): ['Valentine\'s Day'],
  DateTime(2020, 4, 21): ['Easter Sunday'],
  DateTime(2020, 4, 22): ['Easter Monday'],
};

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage>
    with TickerProviderStateMixin {
  Map<DateTime, List> _events;
  List _selectedEvents;
  AnimationController _animationController;
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    final _selectedDay = DateTime.now();

    _events = {
      DateTime.parse("2021-01-26"): ['Event A0', 'Event B0', 'Event C0'],
      DateTime.parse("2021-01-27"): ['Event A1'],
      DateTime.parse("2021-02-08"): [
        'Event A2',
        'Event B2',
        'Event C2',
        'Event D2'
      ],
      DateTime.parse("2021-01-05"): ['Event A3', 'Event B3'],
      DateTime.parse("2021-01-13"): ['Event A4', 'Event B4', 'Event C4'],
      DateTime.parse("2021-02-16"): ['Event A5', 'Event B5', 'Event C5'],
      DateTime.parse("2021-02-14"): ['Event A6', 'Event B6'],
      DateTime.parse("2021-03-16"): [
        'Event A7',
        'Event B7',
        'Event C7',
        'Event D7'
      ],
      DateTime.parse("2021-05-16"): [
        'Event A8',
        'Event B8',
        'Event C8',
        'Event D8'
      ],
      DateTime.parse("2021-01-02"):
          Set.from(['Event A9', 'Event A9', 'Event B9']).toList(),
      DateTime.parse("2021-01-22"): ['Event A10', 'Event B10', 'Event C10'],
      DateTime.parse("2021-02-12"): ['Event A11', 'Event B11'],
      DateTime.parse("2021-03-08"): [
        'Event A12',
        'Event B12',
        'Event C12',
        'Event D12'
      ],
      DateTime.parse("2021-01-01"): ['Event A13', 'Event B13'],
      DateTime.parse("2021-05-16"): ['Event A14', 'Event B14', 'Event C14'],
    };

    _selectedEvents = _events[_selectedDay] ?? [];
    _calendarController = CalendarController();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _calendarController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime day, List events, List holidays) {
    print('CALLBACK: _onDaySelected');
    setState(() {
      _selectedEvents = events;
    });
  }

  void _onVisibleDaysChanged(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onVisibleDaysChanged');
  }

  void _onCalendarCreated(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onCalendarCreated');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: CompanyColors.blue[400],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black38, blurRadius: 10.0)
                ]),
            child: _buildTableCalendar()
            //_buildTableCalendarWithBuilders(),
            ),
        Expanded(child: _buildEventList()),
      ],
    );
  }

  Widget _buildTableCalendar() {
    return TableCalendar(
      calendarController: _calendarController,
      locale: 'es_ES',
      events: _events,
      holidays: _holidays,
      startingDayOfWeek: StartingDayOfWeek.sunday,
      daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle:
              TextStyle(color: Colors.grey[700], fontFamily: 'NanumGothic'),
          weekendStyle:
              TextStyle(color: Colors.grey[700], fontFamily: 'NanumGothic')),
      calendarStyle: CalendarStyle(
        weekdayStyle: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w700,
            fontSize: 16,
            fontFamily: 'NanumGothic'),
        weekendStyle: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w700,
            fontSize: 16,
            fontFamily: 'NanumGothic'),
        contentDecoration: BoxDecoration(color: CompanyColors.blue[400]),
        selectedColor: CompanyColors.blue[900],
        todayColor: CompanyColors.blue[50],
        markersColor: CompanyColors.orange[300].withOpacity(0.8),
        eventDayStyle:
            TextStyle(color: Colors.black54, fontWeight: FontWeight.w700),
        outsideDaysVisible: false,
      ),
      headerStyle: HeaderStyle(
        leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
        rightChevronIcon: Icon(Icons.chevron_right, color: Colors.white),
        centerHeaderTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w200,
            fontFamily: 'TheBoldFont'),
        decoration: BoxDecoration(color: CompanyColors.blue[400]),
        formatButtonTextStyle:
            TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
        // formatButtonDecoration: BoxDecoration(
        //   color: Colors.deepOrange[400],
        //   borderRadius: BorderRadius.circular(16.0),
        // ),
        formatButtonVisible: false,
      ),
      onDaySelected: _onDaySelected,
      onVisibleDaysChanged: _onVisibleDaysChanged,
      onCalendarCreated: _onCalendarCreated,
    );
  }

  Widget _buildEventList() {
    return ListView(
      children: _selectedEvents
          .map((event) => Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 0.8),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: ListTile(
                  title: Text(event.toString()),
                  onTap: () => print('$event tapped!'),
                ),
              ))
          .toList(),
    );
  }
}
