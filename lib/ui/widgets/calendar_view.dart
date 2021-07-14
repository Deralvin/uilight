import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart' as dp;
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import 'package:uitypo/common_main_canvas.dart';

/// Page with [dp.DayPicker].
class CalendarView extends StatefulWidget {
  /// Custom events.

  ///

  @override
  State<StatefulWidget> createState() => _DayPickerPageState();
}

class _DayPickerPageState extends State<CalendarView> {
  DateTime _selectedDate = DateTime.now();

  DateTime _firstDate = DateTime.now().subtract(Duration(days: 45));
  DateTime _lastDate = DateTime.now().add(Duration(days: 45));

  Color selectedDateStyleColor = Colors.blue;
  Color selectedSingleDateDecorationColor = Colors.red;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    Color? bodyTextColor = Theme.of(context).accentTextTheme.bodyText1?.color;
    if (bodyTextColor != null) selectedDateStyleColor = bodyTextColor;

    selectedSingleDateDecorationColor = Theme.of(context).accentColor;
  }

  @override
  Widget build(BuildContext context) {
    // add selected colors to default settings
    dp.DatePickerRangeStyles styles = dp.DatePickerRangeStyles(
        selectedDateStyle: Theme.of(context)
            .accentTextTheme
            .bodyText1
            ?.copyWith(color: selectedDateStyleColor),
        selectedSingleDateDecoration: BoxDecoration(
            color: selectedSingleDateDecorationColor,
            shape: BoxShape.circle
        ),
        dayHeaderStyle: DayHeaderStyle(
            textStyle: TextStyle(
                color: Colors.red
            )
        )
    );

    return CommonMainCanvas(
      title: Text("Date"),
      body: Center(
        child:Column(
          children: <Widget>[
            Expanded(
              child: dp.DayPicker.single(

                selectedDate: _selectedDate,
                onChanged: _onSelectedDateChanged,
                firstDate: _firstDate,
                lastDate: _lastDate,
                datePickerStyles: styles,
                datePickerLayoutSettings: dp.DatePickerLayoutSettings(
                    maxDayPickerRowCount: 2,
                    showPrevMonthEnd: true,
                    showNextMonthStart: true
                ),
                selectableDayPredicate: _isSelectableCustom,
              ),
            ),
          ],
        ),
      )
    );
  }

  // select text color of the selected date

  void _onSelectedDateChanged(DateTime newDate) {
    setState(() {
      _selectedDate = newDate;
    });
  }

  // ignore: prefer_expression_function_bodies
  bool _isSelectableCustom (DateTime day) {
    return day.weekday < 6;
  }


}