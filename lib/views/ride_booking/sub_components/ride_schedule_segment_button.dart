import 'package:flutter/material.dart';

enum Calendar { oneTimeTrip, recurringTrip }

enum BackRowSeating { twoPersons, threePersons }

enum Luggage { noLuggage, smallLuggage, mediumLuggage, LargeLuggage }

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Calendar calendarView = Calendar.oneTimeTrip;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      segments: const <ButtonSegment<Calendar>>[

        ButtonSegment<Calendar>(
            value: Calendar.oneTimeTrip,
            label: Text('One Time Trip'),
            icon: Icon(Icons.calendar_today)),

        ButtonSegment<Calendar>(
            value: Calendar.recurringTrip,
            label: Text('Recurring Trip'),
            icon: Icon(Icons.calendar_today)),

      ],
      selected: <Calendar>{calendarView},
      onSelectionChanged: (Set<Calendar> newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          calendarView = newSelection.first;
        });
      },
    );
  }
}


class LuggageType extends StatefulWidget {
  const LuggageType({Key? key}) : super(key: key);

  @override
  State<LuggageType> createState() => _LuggageTypeState();
}

class _LuggageTypeState extends State<LuggageType> {
  Luggage LuggageView = Luggage.noLuggage;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Luggage>(
      segments: const <ButtonSegment<Luggage>>[

        ButtonSegment<Luggage>(
            value: Luggage.noLuggage,
            label: Text('No Luggage'),
            icon: Icon(Icons.work)),

        ButtonSegment<Luggage>(
            value: Luggage.noLuggage,
            label: Text('S'),
            icon: Icon(Icons.work)),

        ButtonSegment<Luggage>(
            value: Luggage.noLuggage,
            label: Text('M'),
            icon: Icon(Icons.work)),

        ButtonSegment<Luggage>(
            value: Luggage.noLuggage,
            label: Text('L'),
            icon: Icon(Icons.work)),

      ],
      selected: <Luggage>{LuggageView},
      onSelectionChanged: (Set<Luggage> newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          LuggageView = newSelection.first;
        });
      },
    );
  }
}


class SeatingPreference extends StatefulWidget {
  const SeatingPreference({Key? key}) : super(key: key);

  @override
  State<SeatingPreference> createState() => _SeatingPreferenceState();
}

class _SeatingPreferenceState extends State<SeatingPreference> {

  BackRowSeating backRowSeatingView = BackRowSeating.twoPersons;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<BackRowSeating>(
      segments: const <ButtonSegment<BackRowSeating>>[

        ButtonSegment<BackRowSeating>(
            value: BackRowSeating.twoPersons,
            label: Text('Max 2 people'),
            icon: Icon(Icons.chair_rounded)),

        ButtonSegment<BackRowSeating>(
            value: BackRowSeating.threePersons,
            label: Text('3 People'),
            icon: Icon(Icons.chair_rounded)),

      ],
      selected: <BackRowSeating>{backRowSeatingView},
      onSelectionChanged: (Set<BackRowSeating> newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          backRowSeatingView = newSelection.first;
        });
      },
    );
  }
}


