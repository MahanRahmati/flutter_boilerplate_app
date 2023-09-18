import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarPage extends ConsumerStatefulWidget {
  const CalendarPage({super.key});

  @override
  ConsumerState<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends ConsumerState<CalendarPage>
    with AutomaticKeepAliveClientMixin {
  Calendar calendarView = Calendar.day;

  @override
  bool get wantKeepAlive => true;

  void onSelectionChanged(final Set<Calendar> newSelection) {
    setState(() => calendarView = newSelection.first);
  }

  @override
  Widget build(final BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: SegmentedButton<Calendar>(
            segments: const <ButtonSegment<Calendar>>[
              ButtonSegment<Calendar>(
                value: Calendar.day,
                label: Text('Day'),
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Icon(Icons.calendar_view_day),
                ),
              ),
              ButtonSegment<Calendar>(
                value: Calendar.week,
                label: Text('Week'),
                icon: Icon(Icons.calendar_view_week),
              ),
              ButtonSegment<Calendar>(
                value: Calendar.month,
                label: Text('Month'),
                icon: Icon(Icons.calendar_view_month),
              ),
              ButtonSegment<Calendar>(
                value: Calendar.year,
                label: Text('Year'),
                icon: Icon(Icons.calendar_today),
              ),
            ],
            selected: <Calendar>{calendarView},
            onSelectionChanged: (final Set<Calendar> newSelection) {
              setState(() => calendarView = newSelection.first);
            },
          ),
        ),
      ),
      body: switch (calendarView) {
        Calendar.day => const Center(child: Text('Day')),
        Calendar.week => const Center(child: Text('Week')),
        Calendar.month => const Center(child: Text('Month')),
        Calendar.year => const Center(child: Text('Year')),
      },
    );
  }
}

enum Calendar { day, week, month, year }
