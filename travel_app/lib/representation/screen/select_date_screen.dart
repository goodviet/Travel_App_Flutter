import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/representation/screen/diadiem_phuhop_2.dart';
import 'package:travel_app/representation/screen/diadiem_phuhop_screen.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';

class SelectDateScreen extends StatelessWidget {
  static final String routeName = '/select_date_screen';

  DateTime? rangeStartDate;
  DateTime? rangeEndDate;

  @override
  Widget build(BuildContext context) {
    final String name = ModalRoute.of(context)?.settings.arguments as String;
    return AppBarContainerWidget(
        implementLeading: true,
        titlestring: 'Chọn ngày',
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding * 2,
            ),
            SfDateRangePicker(
              view: DateRangePickerView.month,
              selectionMode: DateRangePickerSelectionMode.range,
              monthViewSettings:
                  DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
              selectionColor: ColorsPalette.yellowColor,
              startRangeSelectionColor: ColorsPalette.yellowColor,
              endRangeSelectionColor: ColorsPalette.yellowColor,
              rangeSelectionColor: ColorsPalette.yellowColor.withOpacity(0.25),
              todayHighlightColor: ColorsPalette.yellowColor,
              toggleDaySelection: true,
              onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                if (args.value is PickerDateRange) {
                  rangeStartDate = args.value.startDate;
                  rangeEndDate = args.value.endDate;
                } else {
                  rangeStartDate = null;
                  rangeEndDate = null;
                }
              },
            ),
            ButtomWidget(
                title: 'Địa điểm phù hợp',
                ontap: () {
                  if (rangeEndDate == null && rangeStartDate == null) {
                    print('loi');
                  } else if (rangeEndDate != null && rangeStartDate != null) {
                    Navigator.of(context).pushNamed(DiaDiemPhuHop2.routeName,
                        arguments: {
                           'number0': rangeStartDate,
                          'number': rangeEndDate,
                          'name': name
                        });
                    print('ok');
                  }
                }

                // () {
                //   Navigator.of(context).pop([rangeStartDate, rangeEndDate]);
                // },
                ),
            // SizedBox(
            //   height: kDefaultPadding,
            // ),
            // ButtomWidget(
            //   title: 'Thoát',
            //   ontap: () {
            //     Navigator.of(context).pop([rangeStartDate, rangeEndDate]);
            //   },
            // )
          ],
        ));
  }
}
