import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/core/extension/date_etx.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/representation/screen/food_screen.dart';
import 'package:travel_app/representation/screen/hotel_screen.dart';
import 'package:travel_app/representation/screen/select_date_screen.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';
import 'package:travel_app/representation/widgets/item_booking_widget.dart';

import '../widgets/guest_and_room_booking_screen.dart';
import 'popular_screen.dart';

class DiaDiemPhuHop2 extends StatefulWidget {
  const DiaDiemPhuHop2({
    super.key,
  });
  static const String routeName = '/diadiem_phuhop_2_screen';

  @override
  State<DiaDiemPhuHop2> createState() => _DiadiemPhuHopState();
}

class _DiadiemPhuHopState extends State<DiaDiemPhuHop2> {
  var now = DateFormat('yyy-MM-dd').format(DateTime.now());
  final GlobalKey<ItemGuestAndRoomState> _itemcountGio =
      GlobalKey<ItemGuestAndRoomState>();
  // String? check;
  String? timeSelected;
  String? destination;
  String? dateSelected;
  // DateTime? rangeStartDate;
  // DateTime? rangeEndDate;
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    final DateTime? number0 = arguments?['number0'];
    final DateTime? number = arguments?['number'];
    final String? name = arguments?['name'];
    ngayLich() {
      () async {
        final result =
            await Navigator.of(context).pushNamed(SelectDateScreen.routeName);
        // if ((result as List<DateTime?>)
        //     .any((element) => element == null)) {
        //   dateSelected =
        //       '${result[0]?.getStartDate}-${result[1]?.getEndDate}';
        //   setState(() {});
        // }
        if (result != null && result is List<DateTime?>) {
          setState(
            () {
              dateSelected =
                  '${result[0]?.getStartDate}-${result[1]?.getEndDate}';
            },
          );
        } else {
          setState(
            () {
              dateSelected = null;
            },
          );
        }
      };
    }

    return Scaffold(
      body: AppBarContainerWidget(
        implementLeading: true,
        titlestring: 'Địa điểm phù hợp',
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: kDefaultPadding * 2,
              ),
              ItemBookingWidget(
                  icon: AssetHelper.icoCalendal,
                  title: "Số ngày đếm và đi đã chọn",
                  description: ngayLich() ?? '${now}',
                  color: Colors.white),
              SizedBox(height: 20),
              ItemBookingWidget(
                color: Colors.white,
                icon: AssetHelper.icoLocation,
                title: 'Các địa điểm tham quan',
                description: name ?? '',
                onTap: () {
                  Navigator.of(context).pushNamed(FoodScreen.routeName);
                },
              ),
              SizedBox(
                height: 20,
              ),
              ItemBookingWidget(
                color: Colors.white,
                icon: AssetHelper.icoFood,
                title: 'Quán ăn phù hợp',
                description: 'Hải Sản',
                onTap: () {
                  // Navigator.of(context).pushNamed(LocationScreen.routeName);
                  Navigator.of(context).pushNamed(PopularScreen.routeName);
                },
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              ButtomWidget(
                title: 'Xem các địa điểm đã chọn',
                ontap: () {
                  // Navigator.of(context).pushNamed(HotelScreen.routeName);
                  Navigator.of(context).pushNamed(HotelScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
