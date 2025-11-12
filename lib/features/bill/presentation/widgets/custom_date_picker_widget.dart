import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CustomDatePickerWidget extends StatelessWidget {
  const CustomDatePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final calenderTextStyle = TextStyle(
      fontFamily: "Quicksand",
      fontWeight: FontWeight.w600,
      color: const Color.fromARGB(255, 25, 114, 147),
    );

    return Column(
      children: [
        Text(
          "Dates",
          style: TextStyle(
            color: const Color.fromARGB(255, 25, 114, 147),
            fontFamily: "Quicksand",
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10),
        Card(
          elevation: 10,

          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),

            child: SfDateRangePicker(
              todayHighlightColor: const Color.fromARGB(255, 25, 114, 147),

              selectionColor: const Color.fromARGB(255, 25, 114, 147),

              yearCellStyle: DateRangePickerYearCellStyle(
                todayTextStyle: calenderTextStyle,
                textStyle: calenderTextStyle,
              ),

              monthViewSettings: DateRangePickerMonthViewSettings(
                viewHeaderStyle: DateRangePickerViewHeaderStyle(
                  textStyle: calenderTextStyle,
                ),
              ),

              selectionTextStyle: TextStyle(color: Colors.white),

              monthCellStyle: DateRangePickerMonthCellStyle(
                todayTextStyle: calenderTextStyle,
                textStyle: calenderTextStyle,
              ),

              backgroundColor: Colors.white,
              headerStyle: DateRangePickerHeaderStyle(
                textStyle: calenderTextStyle,
                backgroundColor: Colors.white,
              ),

              selectionMode: DateRangePickerSelectionMode.multiple,
            ),
          ),
        ),
      ],
    );
  }
}
