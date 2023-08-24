import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/extension/date_etx.dart';
import 'package:travel_app/data/hotel_model.dart';
import 'package:travel_app/representation/screen/guest_and_room.dart';
import 'package:travel_app/representation/screen/select_date_screen.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';
import 'package:travel_app/representation/widgets/item_booking_widget.dart';

import '../../core/helpers/asset_helper.dart';
import '../widgets/item_hotel_widget.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});
  static const String routeName = '/blog_screen';

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  final List<HotelModel> listHotel = [
    HotelModel(
      hotelImage: AssetHelper.halong2,
      hotelName: 'HÀ LONG',
      location: 'Quảng Ninh',
      awayKilometer: '364 m',
      star: 4.5,
      numberOfReview: 3241,
      price: 143,
    ),
    HotelModel(
      hotelImage: AssetHelper.hanoi2,
      hotelName: 'HÀ NỘI',
      location: 'Thủ Đô',
      awayKilometer: '2.3 km',
      star: 4.2,
      numberOfReview: 3241,
      price: 234,
    ),
    HotelModel(
      hotelImage: AssetHelper.hue2,
      hotelName: 'HUE',
      location: 'Thành phố Cố đô',
      awayKilometer: '1.1 km',
      star: 3.8,
      numberOfReview: 1234,
      price: 132,
    ),
  ];

  var now = DateFormat('yyy-MM-dd').format(DateTime.now());
  double _currentSliderValue = 0;

  String? dateSelected;
  String? timeSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Da Luu",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: kDefaultPadding,
            ),
            StatefulBuilder(
              builder: (context, setState) {
                return ItemBookingWidget(
                  color: Colors.white,
                  icon: AssetHelper.icoCalendal,
                  title: 'Đi dài ngày',
                  description: dateSelected ?? '${now}',
               
                  onTap: () async {
                    // final result = await Navigator.of(context)
                    //     .pushNamed(SelectDateScreen.routeName);
                    // // if ((result as List<DateTime?>)
                    // //     .any((element) => element == null)) {
                    // //   dateSelected =
                    // //       '${result[0]?.getStartDate}-${result[1]?.getEndDate}';
                    // //   setState(() {});
                    // // }
                    // if (result != null && result is List<DateTime?>) {
                    //   setState(
                    //     () {
                    //       dateSelected =
                    //           '${result[0]?.getStartDate}-${result[1]?.getEndDate}';
                    //     },
                    //   );
                    // } else {
                    //   setState(
                    //     () {
                    //       dateSelected = null;
                    //     },
                    //   );
                    // }
                  },
                );
              },
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            ItemBookingWidget(
              color: Colors.white,
              icon: AssetHelper.icoClock,
              title: 'Đi trong ngày',
              description: timeSelected ?? 'chưa chọn',
         
              onTap: () async {
                final push = await Navigator.of(context)
                    .pushNamed(GuestAndRoomBookingScreen.routeName);
                if (push is List<int>) {
                  setState(() {
                    timeSelected = '${push[0]} Giờ';
                  });
                }
              },
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Text(
                "CAC DIA DIEM DA LU",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children:
                  listHotel.map((e) => ItemHotelWidget(hotelModel: e)).toList(),
            )
          ],
        ),
      ),
    );
  }
}
