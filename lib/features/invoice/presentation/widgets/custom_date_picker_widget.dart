import 'package:app_prototype/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CustomDatePickerWidget extends StatefulWidget {
  final double screenWidth;
  const CustomDatePickerWidget({super.key, required this.screenWidth});

  @override
  State<CustomDatePickerWidget> createState() => _CustomDatePickerWidgetState();
}

class _CustomDatePickerWidgetState extends State<CustomDatePickerWidget> {
  late final DateRangePickerController pickedDatesController;

  @override
  void initState() {
    super.initState();
    pickedDatesController = DateRangePickerController();
  }

  @override
  void dispose() {
    pickedDatesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final calenderTextStyle = TextStyle(
      fontSize: 16,
      fontFamily: "Quicksand",
      fontWeight: FontWeight.bold,
      color: AppColor.primaryAppColor,
    );

    final disabledTextStyle = TextStyle(
      fontSize: 16,
      fontFamily: "Quicksand",
      fontWeight: FontWeight.bold,
      color: AppColor.fadedBlack,
    );

    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Invoice Date Details",
                  style: TextStyle(
                    color: AppColor.primaryAppColor,
                    fontWeight: FontWeight.w700,
                    fontSize: widget.screenWidth * 0.05,
                  ),
                ),
                Icon(Ionicons.calendar_number, color: AppColor.primaryAppColor),
              ],
            ),
            SizedBox(height: 10),

            Divider(thickness: 2.5, color: Colors.black12),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    size: widget.screenWidth * 0.05,
                    Ionicons.calendar_number,
                    color: Colors.black54,
                  ),
                ),

                Text(
                  "Pick Invoice Dates",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: widget.screenWidth * 0.04,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            SfDateRangePicker(
              controller: pickedDatesController,
              todayHighlightColor: AppColor.primaryAppColor,

              selectionColor: AppColor.primaryAppColor,

              yearCellStyle: DateRangePickerYearCellStyle(
                leadingDatesTextStyle: calenderTextStyle,
                disabledDatesTextStyle: disabledTextStyle,
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

              backgroundColor: Colors.transparent,
              headerStyle: DateRangePickerHeaderStyle(
                textStyle: calenderTextStyle,
                backgroundColor: Colors.transparent,
              ),
              minDate: DateTime(2000),
              maxDate: DateTime(2099, 12, 31),
              selectionMode: DateRangePickerSelectionMode.multiple,
            ),
          ],
        ),
      ),
    );
  }
}
