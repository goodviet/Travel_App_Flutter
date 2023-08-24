import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/extension/date_etx.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/data/build_model.dart';
import 'package:travel_app/representation/screen/blog_screen.dart';
import 'package:travel_app/representation/screen/diadiem_phuhop_screen.dart';
import 'package:travel_app/representation/screen/food_screen.dart';
import 'package:travel_app/representation/screen/guest_and_room.dart';
import 'package:travel_app/representation/screen/hotel_screen.dart';
import 'package:travel_app/representation/screen/location_screen.dart';
import 'package:travel_app/representation/screen/popular_screen.dart';
import 'package:travel_app/representation/screen/select_date_screen.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';
import 'package:travel_app/representation/widgets/button_two.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';
import 'package:travel_app/representation/widgets/guest_and_room_booking_screen.dart';
import 'package:travel_app/representation/widgets/item_booking_widget.dart';
import 'package:travel_app/representation/widgets/item_build_image_home.dart';

class HotelBookingScreen extends StatefulWidget {
  HotelBookingScreen({
    Key? key,
  }) : super(key: key);
  static const String routeName = '/hotel_booking_screen';

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  var now = DateFormat('yyy-MM-dd').format(DateTime.now());
  double _currentSliderValue = 0;

  String gia = '0đ';

  String? dateSelected;
  String? timeSelected;

  @override
  Widget build(BuildContext context) {
    final String name = ModalRoute.of(context)?.settings.arguments as String;
    return AppBarContainerWidget(
      implementLeading: true,
      titlestring: 'Lên lịch cho chuyến đi\n' '             $name',
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding * 4,
            ),
            ItemBookingWidget(
                color: Colors.white,
                icon: AssetHelper.icoClock,
                title: 'Đi trong ngày',
                // description: timeSelected ?? 'chưa chọn',
                description: 'Chuyến tham quan trong ngày',
                onTap: () {
                  Navigator.of(context).pushNamed(
                      GuestAndRoomBookingScreen.routeName,
                      arguments: name);
                }

                //     () async {
                //   final push = await Navigator.of(context)
                //       .pushNamed(GuestAndRoomBookingScreen.routeName);
                //   if (push is List<int>) {
                //     setState(() {
                //       timeSelected = '${push[0]} Giờ';
                //     });
                //   }
                // },
                ),
            // SizedBox(
            //   height: 20,
            // ),
            // ItemBookingWidget(
            //   color: Colors.white,
            //   icon: AssetHelper.icoFood,
            //   title: 'Loại thực phẩm',
            //   description: 'Hải Sản',
            //   onTap: () {
            //     // Navigator.of(context).pushNamed(LocationScreen.routeName);
            //     Navigator.of(context).pushNamed(PopularScreen.routeName);
            //   },
            // ),
            // SizedBox(height: 20),
            // ItemBookingWidget(
            //   color: Colors.white,
            //   icon: AssetHelper.icoLocation,
            //   title: 'vi tri',
            //   description: widget.destination ?? 'Phu Yen',
            //   onTap: () {
            //     Navigator.of(context).pushNamed(FoodScreen.routeName);
            //   },
            // ),
            SizedBox(
              height: 20,
            ),
            StatefulBuilder(
              builder: (context, setState) {
                return ItemBookingWidget(
                    color: Colors.white,
                    icon: AssetHelper.icoCalendal,
                    title: 'Đi dài ngày',
                    // description: dateSelected ?? '${now}',
                    description: 'Chuyến tham quan dài ngày',
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(SelectDateScreen.routeName,arguments: name);
                    }
                    //   async {
                    //   final result = await Navigator.of(context)
                    //       .pushNamed(SelectDateScreen.routeName);
                    //   // if ((result as List<DateTime?>)
                    //   //     .any((element) => element == null)) {
                    //   //   dateSelected =
                    //   //       '${result[0]?.getStartDate}-${result[1]?.getEndDate}';
                    //   //   setState(() {});
                    //   // }
                    //   if (result != null && result is List<DateTime?>) {
                    //     setState(
                    //       () {
                    //         dateSelected =
                    //             '${result[0]?.getStartDate}-${result[1]?.getEndDate}';
                    //       },
                    //     );
                    //   } else {
                    //     setState(
                    //       () {
                    //         dateSelected = null;
                    //       },
                    //     );
                    //   }
                    // },
                    );
              },
            ),
            SizedBox(height: 40),

            // ItemGuestAndRoom(
            //     title: 'Chi phí :tr', icon: AssetHelper.icBed, innitData: 2),

            // Column(
            //   children: [
            //     // Text('${_currentSliderValue}' ?? 'chua chon'),
            //     Text('${_currentSliderValue}đ => 10.000.000 đ'),

            //     Slider(
            //       value: _currentSliderValue,
            //       max: 10000000,
            //       divisions: 100,
            //       label: _currentSliderValue.round().toString(),
            //       onChanged: (double value) {
            //         setState(() {
            //           _currentSliderValue = value;
            //         });
            //       },
            //     ),
            //   ],
            // ),

            // SizedBox(
            //   height: kDefaultPadding,
            // ),
            // ButtomWidget(
            //   title: 'Địa điểm phù hợp',
            //   ontap: () {
            //     Navigator.of(context).pushNamed(DiaDiemPhuHop.routeName);
            //     // Navigator.of(context).pushNamed(BlogScreen.routeName);
            //     // Navigator.push(
            //     //   context,
            //     //   MaterialPageRoute(builder: (context) => BlogScreen()),
            //     // );
            //   },
            // ),
            SizedBox(
              height: kMediumPadding,
            ),
          ],
        ),
      ),
    );
  }
}
